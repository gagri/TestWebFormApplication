using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;

namespace Forum
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=forum;persistsecurityinfo=True;password=gaia");
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select * from users where username='" + login1.UserName + "'and password='" + login1.Password + "' ", con);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                Response.Redirect("welcome.aspx");
            }
        }
    }
}