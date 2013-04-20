//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//using System.Data;
//using System.Configuration;
//using System.Collections;
//using System.Web.Security;
//using System.Web.UI.WebControls.WebParts;
//using System.Web.UI.HtmlControls;

using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;



public partial class ChangePassword : System.Web.UI.Page
{
    public DatabaseClass xm = new DatabaseClass();
    public clsPublic s = new clsPublic();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["useradmin"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                s.setInfo("---changepassword", this.Page);
                string name = Session["useradmin"].ToString();
                DataSet ds = xm.getDataSet("SELECT * FROM [user_a] WHERE [user_name]='" + name + "' ");
               
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Page.IsValid == true)
        {
            string name = Session["useradmin"].ToString();
            string aa = FormsAuthentication.HashPasswordForStoringInConfigFile(this.TextBox9.Text, "MD5");
            DataSet ds = xm.getDataSet("SELECT * FROM [user_a] WHERE [user_pwd]='" + aa + "' and [user_name]='" + name + "'");
            int count = ds.Tables[0].Rows.Count;
            if (count <= 0)
            {
                s.rScript(this.GetType(), "<script>alert('Not matched！！！')</script>", this.Page);
                return;

            }
            else
            {
                string a2 = FormsAuthentication.HashPasswordForStoringInConfigFile(this.TextBox10.Text, "md5");
                DataSet ds1 = xm.getDataSet("UPDATE [user_a] SET [user_pwd]='" + a2 + "' WHERE [user_name]='" + name + "'");
                s.rScript(this.GetType(), "<script>alert('Succesfully！！！')</script>", this.Page);
                return;

            }
        }
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }
}