using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_Example.theme
{
    public partial class FrmLogin : System.Web.UI.Page
    {
        bool isSubmit = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            //login.Click += processSubmit;
        }

        protected void processSubmit(object sender, EventArgs e)
        {
            if (username.Text == "")
            {
                validUsername.Enabled = true;
            }
            else
            {
                validUsername.Enabled = false;                  
            }
        }

        protected void processEnterUsername(object sender, EventArgs e)
        {
            if (username.Text == "" && isSubmit)
            {
                validUsername.Enabled = true;
                //validUsername.Display.
                
            }
            else
            {
                validUsername.Enabled = false;
            }
        }
    }
}