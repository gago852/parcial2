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
    }
}