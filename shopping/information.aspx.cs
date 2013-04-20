using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
                s.setInfo("---changeinformation", this.Page);
                string name = Session["useradmin"].ToString();
                DataSet ds = xm.getDataSet("SELECT * FROM [user_a] WHERE [user_name]='" + name + "' ");
                this.TextBox9.Text = ds.Tables[0].Rows[0]["user_name"].ToString();
                this.TextBox10.Text = ds.Tables[0].Rows[0]["user_email"].ToString();
                this.TextBox11.Text = ds.Tables[0].Rows[0]["user_rname"].ToString();
                this.TextBox12.Text = ds.Tables[0].Rows[0]["user_phone"].ToString();
                this.DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["user_male"].ToString();
                this.TextBox3.Text = ds.Tables[0].Rows[0]["user_cardnum"].ToString();
                this.TextBox2.Text = ds.Tables[0].Rows[0]["user_zip"].ToString();
                this.TextBox16.Text = ds.Tables[0].Rows[0]["user_adr1"].ToString();
                this.TextBox1.Text = ds.Tables[0].Rows[0]["user_adr2"].ToString();
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Page.IsValid == true)
        {
            string name = Session["useradmin"].ToString();

            string email = s.wipeScript(this.TextBox10.Text.Trim());
            string rname = s.wipeScript(this.TextBox11.Text.Trim());
            string phone = s.wipeScript(this.TextBox12.Text.Trim());
            string male = this.DropDownList1.SelectedValue;
            string cardnum = s.wipeScript(this.TextBox3.Text.Trim());
            string zip = s.wipeScript(this.TextBox2.Text.Trim());
            string adr1 = s.wipeScript(this.TextBox16.Text.Trim());
            string adr2 = s.wipeScript(this.TextBox1.Text.Trim());
            DataSet ds = xm.getDataSet("UPDATE [user_a] SET [user_email]='" + email + "',[user_rname]='" + rname + "',[user_phone]='" + phone + "',[user_male]='" + male + "',[user_cardnum]='" + cardnum + "',[user_zip]='" + zip + "',[user_adr1]='" + adr1 + "',[user_adr2]='" + adr2 + "'  WHERE [user_name]='" + name + "'");
            s.rScript(this.GetType(), "<script>alert('Succeed ！！！')</script>", this.Page);
        }
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }
}