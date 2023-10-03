using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace prjWebCsFriendbook
{
    public partial class choix : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDestinataires();
            }
        }

        protected void btnRechercher_Click(object sender, EventArgs e)
        {
            string sexeSeletcter = cboSexe.SelectedValue;
            string ageSelected = cboAge.SelectedValue;
            string ethnieSelected = cboEthnie.SelectedValue;
            string raisonSelected = cboRaison.SelectedValue;

            SqlConnection mycon = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=DB_freindBOOK;Integrated Security=True");
            mycon.Open();

            SqlCommand mycmd = new SqlCommand();
            string sql = "SELECT * FROM Membres WHERE ";
            sql += "Sexe = '" + sexeSeletcter + "' AND ethnie = '" + ethnieSelected + "' AND Raison = '" + raisonSelected + "'";
            mycmd.CommandText = sql;
            mycmd.Connection = mycon;

            SqlDataReader myrder = mycmd.ExecuteReader();

            TableRow headerRow = new TableRow();
            headerRow.BackColor = System.Drawing.Color.FromName("LightGray");

            TableCell nomHeader = new TableCell();
            nomHeader.Text = "Nom";
            headerRow.Cells.Add(nomHeader);

            TableCell sexeHeader = new TableCell();
            sexeHeader.Text = "Sexe";
            headerRow.Cells.Add(sexeHeader);

            TableCell naissanceHeader = new TableCell();
            naissanceHeader.Text = "Naissance";
            headerRow.Cells.Add(naissanceHeader);

            TableCell ecrireHeader = new TableCell();
            ecrireHeader.Text = "Écrire un message";
            headerRow.Cells.Add(ecrireHeader);

            tabRecherche.Rows.Add(headerRow);

            while (myrder.Read())
            {
                TableRow row = new TableRow();

                TableCell nomCell = new TableCell();
                nomCell.Text = myrder["Nom"].ToString();
                row.Cells.Add(nomCell);

                TableCell sexeCell = new TableCell();
                sexeCell.Text = myrder["Sexe"].ToString();
                row.Cells.Add(sexeCell);

                TableCell naissanceCell = new TableCell();
                naissanceCell.Text = myrder["Naissance"].ToString();
                row.Cells.Add(naissanceCell);

                TableCell ecrireCell = new TableCell();
                Button btnEcrire = new Button();
                btnEcrire.Text = "Écrire";
                btnEcrire.Click += new EventHandler(btnEcrire_Click);
                ecrireCell.Controls.Add(btnEcrire);
                row.Cells.Add(ecrireCell);

                tabRecherche.Rows.Add(row);
            }

            panResultat.Visible = true;
            panMessage.Visible = true;
        }

        protected void LoadDestinataires()
        {
            SqlConnection mycon = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=DB_freindBOOK;Integrated Security=True");
            mycon.Open();
            string sql = "SELECT RefMembre, Nom FROM Membres";
            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myrder = mycmd.ExecuteReader();

            ListItem elm = new ListItem();
            elm.Text = "Choisir un destinataire";
            cboDestinataires.Items.Add(elm);

            while (myrder.Read())
            {
                elm = new ListItem();
                elm.Text = myrder["Nom"].ToString();
                elm.Value = myrder["RefMembre"].ToString();
                cboDestinataires.Items.Add(elm);
            }

            myrder.Close();
            mycon.Close();
        }

        protected void btnEcrire_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnLireMessage_Click(object sender, EventArgs e)
        {
            Response.Redirect("boiteReception.aspx");
        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {
            SqlConnection mycon = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=DB_freindBOOK;Integrated Security=True");
            mycon.Open();
            int refReceveur = Convert.ToInt32(cboDestinataires.SelectedValue);
            int refEenvoyeur = Convert.ToInt32(Session["MembreID"]);
            string tit = txtTitre.Text.Trim();
            string msg = txtMessage.Text.Trim();
            string dat = DateTime.Today.ToShortDateString();

            string sql = "INSERT INTO Messages (Titre, Message, DateCreation, Envoyeur, Receveur, Nouveau) ";
            sql += "VALUES('" + tit + "','" + msg + "','" + dat + "'," + refEenvoyeur + "," + refReceveur + ",'True')";
            SqlCommand mycmd = new SqlCommand(sql, mycon);

            mycmd.ExecuteNonQuery();
            mycon.Close();

            Response.Redirect("choix.aspx");
        }
    }
}
