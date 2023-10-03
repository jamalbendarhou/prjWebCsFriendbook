using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

namespace prjWebCsFriendbook
{
    public partial class lireMessage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                SqlConnection mycon = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=DB_freindBOOK;Integrated Security=True");
                mycon.Open();


                string sql = "SELECT  Titre, Nouveau, Message, DateCreation  FROM Messages  WHERE RefMessage = " + Session["MembreID"];
                SqlCommand mycmd = new SqlCommand(sql, mycon);
                SqlDataReader myrder = mycmd.ExecuteReader();

                if (myrder.Read() == true)
                {
                    lblTitre.Text = myrder["Titre"].ToString();
                    lblMessage.Text = myrder["Message"].ToString();
                    lblDate.Text = myrder["DateCreation"].ToString();
                }
                myrder.Close();
                sql = "UPDATE Messages  SET Nouveau = 'False' WHERE RefMessage = " + Session["MembreID"];
                SqlCommand mycmd1 = new SqlCommand(sql, mycon);
                mycmd1.ExecuteNonQuery();


                mycon.Close();
            }
        }
    }
}