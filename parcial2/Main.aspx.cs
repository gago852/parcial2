using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial2
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lista.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegeCliente.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegProduct.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegeVendedor.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Factura.aspx");
        }
    }
}