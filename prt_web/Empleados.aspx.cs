using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prt_web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_crear_Click(object sender, EventArgs e){
            ConexionBD cn = new ConexionBD();
            cn.AbrirConexion();
            cn.CerrarConexion();



        }
    }
}