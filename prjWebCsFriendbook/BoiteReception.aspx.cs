using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsFriendbook
{
    public partial class BoiteReception : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
               
                    lblWelcome.Text = "<h3>Bienvenue " + Session["NomMembre"] + ",</h3>";

                    SqlConnection mycon = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=DB_freindBOOK;Integrated Security=True");
                    mycon.Open();

                    string sql = "SELECT RefMessage, Titre, Nouveau, Membres.Nom FROM Messages, Membres WHERE RefMessage = Messages.Envoyeur AND Receveur = @RefMembre";
                    SqlCommand mycmd = new SqlCommand(sql, mycon);
                    mycmd.Parameters.AddWithValue("@RefMembre", Convert.ToInt32(Session["RefMembre"]));

                SqlDataReader myrder = mycmd.ExecuteReader();

                    int nbMsg = 0;
                    while (myrder.Read() == true)
                    {
                        TableRow maLigne = new TableRow();
                        TableCell maCellule = new TableCell();
                        maCellule.Text = myrder["Titre"].ToString();
                        maLigne.Cells.Add(maCellule);

                        maCellule = new TableCell();
                        maCellule.Text = myrder["Nom"].ToString();
                        maLigne.Cells.Add(maCellule);

                        maCellule = new TableCell();
                        int refMsgTmp = Convert.ToInt32(myrder["RefMembre"]);
                        string nomEnvoy = myrder["Nom"].ToString();
                        maCellule.Text = "<a href='lireMessage.aspx?refM=" + refMsgTmp + "&nom=" + nomEnvoy + "'>Lire</a> ";
                        maCellule.Text += "  <a href='effacerMessage.aspx?refM=" + refMsgTmp + "'>Effacer</a>";
                        maLigne.Cells.Add(maCellule);

                        if (myrder["Nouveau"].ToString() == "True")
                        {
                            maLigne.BackColor = Color.LightYellow;
                        }

                        tabMessages.Rows.Add(maLigne);
                        nbMsg++;
                    }
                    myrder.Close();
                    mycon.Close();
                    lblWelcome.Text += "<h3>Vous avez  " + nbMsg + " messages</h3>";
               
                
            }
        }
    }
}