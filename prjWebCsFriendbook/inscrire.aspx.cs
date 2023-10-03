using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsFriendbook
{
    public partial class inscrire : System.Web.UI.Page
    {
        static string sql;
        static SqlConnection mycon;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnInscription_Click(object sender, EventArgs e)
        {
            string userNom = txtNom.Text;
            string userMotDePasse = txtMotDePasse.Text;
            string userSexe = cboSexe.SelectedValue;
            string userDateNaissance = txtNaissance.Text;
            string userRaison = cboRaison.SelectedValue;
            string userEthnie = cboEthnie.SelectedValue;

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=DB_freindBOOK;Integrated Security=True";

            if (mycon.State != ConnectionState.Open)
            {
                mycon.Open();
            }
            sql = "SELECT * FROM Membres WHERE Nom = '" + userNom + "'";
            SqlCommand mycmd2 = new SqlCommand(sql, mycon);
            SqlDataReader myrder2 = mycmd2.ExecuteReader();

            if (myrder2.Read() == true)
            {
                myrder2.Close(); 
                lblErreur.Text = "Vous êtes déjà membre. Veuillez contacter l'administration.";
                lblErreur.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                myrder2.Close(); 
                sql = "INSERT INTO Membres (Nom, MotDePasse, Sexe, Naissance, Raison, Ethnie) " +
                      "VALUES ('" + userNom + "', '" + userMotDePasse + "', '" + userSexe + "', '" + userDateNaissance + "', '" + userRaison + "', '" + userEthnie + "')";

                SqlCommand mycmd = new SqlCommand(sql, mycon);
                mycmd.ExecuteNonQuery();

                mycon.Close();

                Response.Redirect("connexion.aspx");
            }
        }



    }
}