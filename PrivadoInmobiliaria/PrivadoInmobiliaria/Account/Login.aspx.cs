using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using PrivadoInmobiliaria.Models;
using System.Data.SqlClient;

namespace PrivadoInmobiliaria.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn(object sender, EventArgs e)
        {

        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {

            string clave = password.Text;
            string usuario = username.Text;
            ClientScriptManager cm = this.ClientScript;
            try
            {

            SqlConnection conexion = BdComun.ObtenerConexion();
            SqlCommand consulta = new SqlCommand(string.Format("SELECT user_login, nit_empr, user_pass, perfil_id, user_stat FROM inmobiliarias.dbo.tbl_usuarios where (user_login = '" + usuario + "') And (user_pass = '" + clave + "')"),conexion);
            SqlDataReader dr = consulta.ExecuteReader();
            if (dr.Read())
            {
                    string estado = dr["user_stat"].ToString();
                    if (estado == "Activo")
                    {
                        string perfil = dr["perfil_id"].ToString();
                        string nit = dr["nit_empr"].ToString();
                        string nombreUsu = dr["user_login"].ToString();

                        int rol = Convert.ToInt16(perfil);

                        Session["nit"] = nit;
                        Session["rol_usuario"] = rol;
                        Session["nombreUsuario"] = nombreUsu;

                        switch (rol)
                        {
                            case 0:
                                Response.Redirect("Confirm.aspx");
                                break;
                            case 1:
                                Response.Redirect("Confirm.aspx");
                                break;
                            case 2:
                                Response.Redirect("/Param/Empresa.aspx");
                                break;
                            case 3:
                                Response.Redirect("Lockout.aspx");
                                break;
                            case 4:
                                Response.Redirect("ResetPassword.aspx");
                                break;
                            case 5:
                                Response.Redirect("Register.aspx");
                                break;
                        }
                        dr.Close();
                    }
                    else {
                        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Usuario Inactivo');window.location=\"Login.aspx\"</script>");
                        
                    }        
            }
            
            else{
                    cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Datos Incorrectos');window.location=\"Login.aspx\"</script>");
                }
            
            }
            catch (Exception ex)
            {

                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('No se pudo consultar la BD');</script>");

            }
        }
    }
}