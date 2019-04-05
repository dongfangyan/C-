using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chapter2
{
    public partial class _2_4MasterControl : System.Web.UI.MasterPage
    {
        public Label MasterPageLabel
        {
            get { return this.lblMaster; }
            set { this.lblMaster = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}