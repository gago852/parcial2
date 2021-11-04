using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace parcial2
{
    public partial class RegeCliente : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\gabriel\pProg\cshar\asp\parcial2\parcial2\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btGuardar_Click(object sender, EventArgs e)
        {
            String cedula = txtCedula.Text;
            String nombre = txtNombre.Text;
            String apellido = txtApellido.Text;
            String direccion = txtDireccion.Text;
            String fijo = txtFijo.Text;
            String celular = txtCel.Text;
            String correo = txtEmail.Text;
            String edad = txtEdad.Text;
            String genero = rbGenero.SelectedValue;
            String fecha = txtFechaCumple.Text;
            String pago = ddPago.SelectedValue;

            SqlCommand sqlCommand = new SqlCommand("insert into cliente (cedula, nombre, apellido, direccion, fijo, " +
                "celular, correo, edad, sexo, fecha, pago) values (@cedula, @nombre, @apellido, @direccion, @fijo, @celular, @correo, @edad, @genero, @fecha, @pago)", con);

            sqlCommand.Parameters.Add("@cedula", SqlDbType.VarChar).Value = cedula;
            sqlCommand.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre;
            sqlCommand.Parameters.Add("@apellido", SqlDbType.VarChar).Value = apellido;
            sqlCommand.Parameters.Add("@direccion", SqlDbType.VarChar).Value = direccion;
            sqlCommand.Parameters.Add("@fijo", SqlDbType.VarChar).Value = fijo;
            sqlCommand.Parameters.Add("@celular", SqlDbType.VarChar).Value = celular;
            sqlCommand.Parameters.Add("@correo", SqlDbType.VarChar).Value = correo;
            sqlCommand.Parameters.Add("@edad", SqlDbType.VarChar).Value = edad;
            sqlCommand.Parameters.Add("@genero", SqlDbType.VarChar).Value = genero;
            sqlCommand.Parameters.Add("@fecha", SqlDbType.VarChar).Value = fecha;
            sqlCommand.Parameters.Add("@pago", SqlDbType.VarChar).Value = pago;

            con.Open();
            sqlCommand.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Cliente guardado')", true);

        }
    }
}