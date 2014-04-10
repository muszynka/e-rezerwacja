using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Profiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, System.EventArgs e)
{
    labelPostalCode.Text = Profile.PostalCode;

}
    protected void SetPostalCode_Click(object sender, System.EventArgs e)
    {
        Profile.PostalCode = Server.HtmlEncode(textPostalCode.Text);
        labelPostalCode.Text = Profile.PostalCode;
    }
}