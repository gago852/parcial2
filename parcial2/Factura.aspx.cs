using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace parcial2
{
    public partial class Factura : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\gabriel\pProg\cshar\asp\parcial2\parcial2\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenar(null);
        }

        private void llenar(String condicion)
        {
            String sql = "";
            if (condicion != null)
            {
                sql = "select f.Id as pedido, c.cedula as idcliente, c.nombre as nombreCliente, f.cantidad, v.nombre as nombreVendedor, " +
                    "f.precio as precioSubtotal, p.nombre as nombreProducto, p.precio as precioUnitario, " +
                    "f.idproducto as codigoProducto " +
                    "from factura f " +
                    "INNER JOIN cliente c on f.idcliente=c.cedula " +
                    "INNER JOIN vendedor v on f.idvendedor=v.cedula " +
                    "INNER JOIN producto p on f.idproducto=p.codigo" +
                    " where f.idcliente='" + condicion + "'";
            }
            else
            {
                sql = "select f.Id as pedido, c.cedula as idcliente, c.nombre as nombreCliente, f.cantidad, v.nombre as nombreVendedor, " +
                    "f.precio as precioSubtotal, p.nombre as nombreProducto, p.precio as precioUnitario, f.idproducto as codigoProducto " +
                    "from factura f " +
                    "INNER JOIN cliente c on f.idcliente=c.cedula " +
                    "INNER JOIN vendedor v on f.idvendedor=v.cedula " +
                    "INNER JOIN producto p on f.idproducto=p.codigo";
            }

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sql, con);
            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);

            DataList1.DataSource = dataSet;
            DataList1.DataBind();
        }

        protected void btGuardar_Click(object sender, EventArgs e)
        {
            String cliente = ddCedulas.SelectedValue;

            String codigoProducto = ddProducto.SelectedValue;
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from producto where codigo='" + codigoProducto + "'", con);
            DataSet dataSetProducto = new DataSet();
            sqlDataAdapter.Fill(dataSetProducto);
            int canditad = int.Parse(txtCantidad.Text);

            int subtotal = int.Parse(dataSetProducto.Tables[0].Rows[0].Field<String>("precio")) * canditad;

            sqlDataAdapter = new SqlDataAdapter("select * from vendedor", con);
            DataSet dataSetVendedor = new DataSet();
            sqlDataAdapter.Fill(dataSetVendedor);


            int randVendedor = new Random().Next(dataSetVendedor.Tables[0].Rows.Count);

            String cedulaVendedor = dataSetVendedor.Tables[0].Rows[randVendedor].Field<String>("cedula");

            SqlCommand sqlCommand = new SqlCommand("insert into factura (idcliente, precio, cantidad, idvendedor," +
                " idproducto) values (@idcliente, @precio, @cantidad, @idvendedor, @idproducto)", con);

            sqlCommand.Parameters.Add("@idcliente", SqlDbType.VarChar).Value = cliente;
            sqlCommand.Parameters.Add("@precio", SqlDbType.VarChar).Value = subtotal;
            sqlCommand.Parameters.Add("@cantidad", SqlDbType.VarChar).Value = canditad;
            sqlCommand.Parameters.Add("@idvendedor", SqlDbType.VarChar).Value = cedulaVendedor;
            sqlCommand.Parameters.Add("@idproducto", SqlDbType.VarChar).Value = codigoProducto;

            con.Open();
            sqlCommand.ExecuteNonQuery();
            con.Close();
            llenar(null);

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('factura guardado')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label4.Text = "Total a pagar: testo de ejemplo";
            llenar(null);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String cedula = ddCedulas.SelectedValue;

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from factura where idcliente='" + cedula + "'", con);
            DataSet dataSet= new DataSet();
            sqlDataAdapter.Fill(dataSet);
            int cont = 0;

            for (int i=0; i < dataSet.Tables[0].Rows.Count; i = i + 1)
            {
                cont = cont + int.Parse(dataSet.Tables[0].Rows[i].Field<String>("precio"));
            }

            Label4.Text = "Total a pagar: " + cont;

            llenar(cedula);
        }

        protected void comando(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "editar")
            {
                DataList1.EditItemIndex = e.Item.ItemIndex;
                llenar(null);
            }
            else if (e.CommandName == "cancelar")
            {
                DataList1.EditItemIndex = -1;
                llenar(null);
            }
            else if (e.CommandName == "actualizar")
            {
                String codigo = ((Label)e.Item.FindControl("Label5")).Text;
                String cantidadString = ((TextBox)e.Item.FindControl("TextBox3")).Text;
                int cantidad = int.Parse(cantidadString);
                String producto= ((Label)e.Item.FindControl("Label6")).Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from producto where codigo='" + producto + "'", con);
                DataSet dataSet = new DataSet();
                sqlDataAdapter.Fill(dataSet);

                int subtotal = int.Parse(dataSet.Tables[0].Rows[0].Field<String>("precio")) * cantidad;

                SqlCommand sqlCommand = new SqlCommand("update factura set cantidad = @cantidad, " +
                    "precio = @precio where Id = @Id", con);

                sqlCommand.Parameters.Add("@Id", SqlDbType.VarChar).Value = codigo;
                sqlCommand.Parameters.Add("@cantidad", SqlDbType.VarChar).Value = cantidad;
                sqlCommand.Parameters.Add("@precio", SqlDbType.VarChar).Value = subtotal;

                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();
                DataList1.EditItemIndex = -1;
                llenar(null);
            }
            else if (e.CommandName == "borrar")
            {
                String codigo = ((Label)e.Item.FindControl("Label5")).Text;

                SqlCommand sqlCommand = new SqlCommand("delete from factura where Id = @Id", con);

                sqlCommand.Parameters.Add("@Id", SqlDbType.VarChar).Value = codigo;

                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();

                llenar(null);
            }
        }

        //protected void btGuardar_Click(object sender, EventArgs e)
        //{
        //    String cliente = ddCedulas.SelectedValue;
        //    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from cliente where cedula='" + cliente + "'", con);
        //    DataSet dataSet = new DataSet();
        //    sqlDataAdapter.Fill(dataSet);

        //    String nombrecliente = dataSet.Tables[0].Rows[0].Field<String>("nombre")+" "+ dataSet.Tables[0].Rows[0].Field<String>("apellido");

        //}
    }
}