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
    public partial class Registration : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("server=localhost;user id=root;persistsecurityinfo=True;database=forum;password=gaia");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void Registration_Click(object sender, EventArgs e)
        {
           //query non parametrizzata, VULNERABILE
           /*
            con.Open();
            MySqlCommand cmd1 = new MySqlCommand("select * from users where username='" + txtUsername.Text + "' ", con);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            */
            //query parametrizzata
            MySqlCommand command = new MySqlCommand();
            command.Connection = con;
            command.Parameters.Add("@username", MySqlDbType.VarChar).Value = txtUsername.Text;
            command.CommandText = "select * from users where username=@username";
            con.Open();
            MySqlDataAdapter adp = new MySqlDataAdapter(command);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                MySqlCommand cmd = new MySqlCommand("INSERT INTO `forum`.`users` (`username`, `password`, `email`) VALUES('" + txtUsername.Text + "', '" + txtPassword.Text + "', '" + txtEmail.Text + "'); ", con);
                cmd.ExecuteNonQuery();
            }
            else
                Response.Redirect("Registration.aspx");
            con.Close();


        }


    }
}