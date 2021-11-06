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
    public partial class Lista : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\gabriel\pProg\cshar\asp\parcial2\parcial2\App_Data\Database1.mdf;Integrated Security=True");

        private void llenar()
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from producto", con);
            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);

            DataList1.DataSource = dataSet;
            DataList1.DataBind();

            sqlDataAdapter = new SqlDataAdapter("select * from cliente", con);
            dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);

            DataList2.DataSource = dataSet;
            DataList2.DataBind();

            sqlDataAdapter = new SqlDataAdapter("select * from vendedor", con);
            dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);

            DataList3.DataSource = dataSet;
            DataList3.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenar();
        }

        protected void ComandoD1(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "editar")
            {
                DataList1.EditItemIndex = e.Item.ItemIndex;
                llenar();
            }
            else if (e.CommandName == "cancelar")
            {
                DataList1.EditItemIndex = -1;
                llenar();
            }
            else if (e.CommandName == "actualizar")
            {
                String codigo = ((Label)e.Item.FindControl("Label9")).Text;
                String nombre = ((TextBox)e.Item.FindControl("TextBox1")).Text;
                String cantidad = ((TextBox)e.Item.FindControl("TextBox2")).Text;
                String precio = ((TextBox)e.Item.FindControl("TextBox3")).Text;

                SqlCommand sqlCommand = new SqlCommand("update producto set nombre = @nombre, cantidad = @cantidad, " +
                    "precio = @precio where codigo = @codigo", con);

                sqlCommand.Parameters.Add("@codigo", SqlDbType.VarChar).Value = codigo;
                sqlCommand.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre;
                sqlCommand.Parameters.Add("@cantidad", SqlDbType.VarChar).Value = cantidad;
                sqlCommand.Parameters.Add("@precio", SqlDbType.VarChar).Value = precio;

                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();
                DataList1.EditItemIndex = -1;
                llenar();
            }
            else if (e.CommandName == "borrar")
            {
                String codigo = ((Label)e.Item.FindControl("Label10")).Text;

                SqlCommand sqlCommand = new SqlCommand("delete from producto where codigo = @codigo", con);

                sqlCommand.Parameters.Add("@codigo", SqlDbType.VarChar).Value = codigo;

                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();

                llenar();
            }

        }

        protected void ComandoD2(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "editar")
            {
                DataList2.EditItemIndex = e.Item.ItemIndex;
                llenar();
            }
            else if (e.CommandName == "cancelar")
            {
                DataList2.EditItemIndex = -1;
                llenar();
            }
            else if (e.CommandName == "actualizar")
            {
                String cedula = ((Label)e.Item.FindControl("Label9")).Text;
                String nombre = ((TextBox)e.Item.FindControl("TextBox1")).Text;
                String apellido = ((TextBox)e.Item.FindControl("TextBox2")).Text;
                String direccion = ((TextBox)e.Item.FindControl("TextBox3")).Text;
                String fijo = ((TextBox)e.Item.FindControl("TextBox4")).Text;
                String celular = ((TextBox)e.Item.FindControl("TextBox5")).Text;
                String correo = ((TextBox)e.Item.FindControl("TextBox6")).Text;
                String edad = ((TextBox)e.Item.FindControl("TextBox7")).Text;
                String sexo = ((TextBox)e.Item.FindControl("TextBox8")).Text;
                String fechaNacimiento = ((TextBox)e.Item.FindControl("TextBox9")).Text;
                String pago = ((TextBox)e.Item.FindControl("TextBox10")).Text;

                SqlCommand sqlCommand = new SqlCommand("update cliente set nombre = @nombre, apellido = @apellido, " +
                    "direccion = @direccion, fijo = @fijo, celular = @celular, correo = @correo, " +
                    "edad = @edad, sexo = @sexo, fecha = @fecha, pago = @pago" +
                    "  where cedula = @cedula", con);

                sqlCommand.Parameters.Add("@cedula", SqlDbType.VarChar).Value = cedula;
                sqlCommand.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre;
                sqlCommand.Parameters.Add("@apellido", SqlDbType.VarChar).Value = apellido;
                sqlCommand.Parameters.Add("@direccion", SqlDbType.VarChar).Value = direccion;
                sqlCommand.Parameters.Add("@fijo", SqlDbType.VarChar).Value = fijo;
                sqlCommand.Parameters.Add("@celular", SqlDbType.VarChar).Value = celular;
                sqlCommand.Parameters.Add("@correo", SqlDbType.VarChar).Value = correo;
                sqlCommand.Parameters.Add("@edad", SqlDbType.VarChar).Value = edad;
                sqlCommand.Parameters.Add("@sexo", SqlDbType.VarChar).Value = sexo;
                sqlCommand.Parameters.Add("@fecha", SqlDbType.VarChar).Value = fechaNacimiento;
                sqlCommand.Parameters.Add("@pago", SqlDbType.VarChar).Value = pago;

                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();
                DataList2.EditItemIndex = -1;
                llenar();
            }
            else if (e.CommandName == "borrar")
            {
                String cedula = ((Label)e.Item.FindControl("Label10")).Text;

                SqlCommand sqlCommand = new SqlCommand("delete from cliente where cedula = @cedula", con);

                sqlCommand.Parameters.Add("@cedula", SqlDbType.VarChar).Value = cedula;

                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();

                llenar();
            }
        }

        protected void ComandoD3(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "editar")
            {
                DataList3.EditItemIndex = e.Item.ItemIndex;
                llenar();
            }
            else if (e.CommandName == "cancelar")
            {
                DataList3.EditItemIndex = -1;
                llenar();
            }
            else if (e.CommandName == "actualizar")
            {
                String cedula = ((Label)e.Item.FindControl("Label9")).Text;
                String nombre = ((TextBox)e.Item.FindControl("TextBox1")).Text;
                String apellido = ((TextBox)e.Item.FindControl("TextBox2")).Text;
                String direccion = ((TextBox)e.Item.FindControl("TextBox3")).Text;
                String fijo = ((TextBox)e.Item.FindControl("TextBox4")).Text;
                String celular = ((TextBox)e.Item.FindControl("TextBox5")).Text;
                String correo = ((TextBox)e.Item.FindControl("TextBox6")).Text;
                String edad = ((TextBox)e.Item.FindControl("TextBox7")).Text;
                String sexo = ((TextBox)e.Item.FindControl("TextBox8")).Text;
                String fechaNacimiento = ((TextBox)e.Item.FindControl("TextBox9")).Text;

                SqlCommand sqlCommand = new SqlCommand("update vendedor set nombre = @nombre, apellido = @apellido, " +
                    "direccion = @direccion, fijo = @fijo, celular = @celular, correo = @correo, " +
                    "edad = @edad, sexo = @sexo, fecha = @fecha" +
                    "  where cedula = @cedula", con);

                sqlCommand.Parameters.Add("@cedula", SqlDbType.VarChar).Value = cedula;
                sqlCommand.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre;
                sqlCommand.Parameters.Add("@apellido", SqlDbType.VarChar).Value = apellido;
                sqlCommand.Parameters.Add("@direccion", SqlDbType.VarChar).Value = direccion;
                sqlCommand.Parameters.Add("@fijo", SqlDbType.VarChar).Value = fijo;
                sqlCommand.Parameters.Add("@celular", SqlDbType.VarChar).Value = celular;
                sqlCommand.Parameters.Add("@correo", SqlDbType.VarChar).Value = correo;
                sqlCommand.Parameters.Add("@edad", SqlDbType.VarChar).Value = edad;
                sqlCommand.Parameters.Add("@sexo", SqlDbType.VarChar).Value = sexo;
                sqlCommand.Parameters.Add("@fecha", SqlDbType.VarChar).Value = fechaNacimiento;

                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();
                DataList3.EditItemIndex = -1;
                llenar();
            }
            else if (e.CommandName == "borrar")
            {
                String cedula = ((Label)e.Item.FindControl("Label10")).Text;

                SqlCommand sqlCommand = new SqlCommand("delete from vendedor where cedula = @cedula", con);

                sqlCommand.Parameters.Add("@cedula", SqlDbType.VarChar).Value = cedula;

                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();

                llenar();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}