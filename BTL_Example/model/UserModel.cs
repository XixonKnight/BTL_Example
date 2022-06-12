using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_Example.model
{
    public class UserModel
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public int LongTimes { get; set; }
    }
}