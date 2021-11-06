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
    public partial class RegProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\gabriel\pProg\cshar\asp\parcial2\parcial2\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btGuardar_Click(object sender, EventArgs e)
        {
            String codigo = txtCodigo.Text;
            String nombre = txtNombre.Text;
            String cantidad = txtCantidad.Text;
            String precio = txtPrecio.Text;

            SqlCommand sqlCommand = new SqlCommand("insert into producto (codigo, nombre, cantidad, precio" +
                ") values (@codigo, @nombre, @cantidad, @precio)", con);

            sqlCommand.Parameters.Add("@codigo", SqlDbType.VarChar).Value = codigo;
            sqlCommand.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre;
            sqlCommand.Parameters.Add("@cantidad", SqlDbType.VarChar).Value = cantidad;
            sqlCommand.Parameters.Add("@precio", SqlDbType.VarChar).Value = precio;


            con.Open();
            sqlCommand.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('producto guardado')", true);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

    }
}