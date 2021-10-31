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