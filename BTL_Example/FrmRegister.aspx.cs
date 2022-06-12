using BTL_Example.Utils;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_Example.theme
{
    public partial class FrmRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void processRegister(object sender, EventArgs e)
        {
            //System.Threading.Thread.Sleep(5000);
            if (validateForm())
            {
                using (SqlConnection sqlConnection = ConnectionDatabase.getConnectionString())
                {
                    try
                    {
                        sqlConnection.Open();
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = "insert_user";
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@username", username.Text);
                        cmd.Parameters.AddWithValue("@password", password.Text);
                        cmd.Connection = sqlConnection;
                        int flag = cmd.ExecuteNonQuery();
                        if (flag > 0)
                        {
                            System.Threading.Thread.Sleep(1000);
                            Server.Transfer("FrmLogin.aspx");
                        }
                    }
                    catch (Exception)
                    {
                            
                    }
                    finally
                    {
                        sqlConnection.Close();
                    }
                }
            }
        }

        private bool validateForm()
        {
            if (string.IsNullOrEmpty(username.Text) || string.IsNullOrEmpty(password.Text)
                || string.IsNullOrEmpty(repassword.Text))
            {
                return false;
            }
            else
            {
                if (!password.Text.Equals(repassword.Text))
                {
                    validRePassword.ErrorMessage = "Mật khẩu không khớp";
                    validRePassword.Enabled = true;
                    return false;
                }
            }
            return true;
        }
    }
}