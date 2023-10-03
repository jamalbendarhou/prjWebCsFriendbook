using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace prjWebCsFriendbook
{
    public partial class connexion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnexion_Click(object sender, EventArgs e)
        {
            string userNom = txtNom.Text.Trim();
            string userPassword = txtMot2passe.Text.Trim();
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=DB_freindBOOK;Integrated Security=True";
            mycon.Open();

            SqlCommand mycmd = new SqlCommand();
            string sql = "SELECT * FROM Membres ;";
            mycmd.CommandText = sql;
            mycmd.Connection = mycon;
            SqlDataReader myrder = mycmd.ExecuteReader();

            while (myrder.Read() == true)
            {
                if (myrder["Nom"].ToString() == userNom && myrder["MotDePasse"].ToString() == userPassword)
                {
                    Session["NomMembre"] = myrder["Nom"];
                    Session["MembreID"] = myrder["RefMembre"];
                    mycon.Close();
                    Response.Redirect("choix.aspx");
                    break;
                }
                else
                {
                    lblErreur.Text = "vous n'etes pas membre merci de vous inscrire";


                }
            }
        }
    }
}