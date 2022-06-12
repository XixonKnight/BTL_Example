using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BTL_Example.Utils
{
    public class ConnectionDatabase
    {
        public static SqlConnection getConnectionString()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings["connection_db"].ConnectionString);
        }
    }
}