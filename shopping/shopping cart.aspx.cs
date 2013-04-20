using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shopping_cart : System.Web.UI.Page
{
    public DatabaseClass xm = new DatabaseClass();
    public clsPublic s = new clsPublic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["useradmin"] == null)
        {
            Response.Write("<script>alert('Please log in！！！');location='logo.aspx'</script>");

        }
        else
        {

            if (!IsPostBack)
            {
                s.setInfo("---shopping cart", this.Page);

                if (Request.QueryString["ac"] == null)
                {
                    string name = Session["useradmin"].ToString();
                    int l, m;
                    if (Request.QueryString["page"] != null)
                    {
                        l = int.Parse(Request.QueryString["page"]);
                    }
                    else
                    {
                        l = 1;
                    }
                    Session["lp"] = l.ToString();
                    if (l == 1)
                    {
                        m = 0;
                    }
                    else
                    {
                        m = (l - 1) * 40;
                    }

                    DataSet ds = new DataSet();
                    ds = xm.getDataSet("SELECT * FROM [user_shop] WHERE [user_name]='" + name + "' ");

                    if (ds.Tables[0].Rows.Count > 0)
                    {


                        ds = xm.getDataSet("SELECT * FROM [user_shop] WHERE [user_name]='" + name + "' ");


                        this.Repeater1.DataSource = ds.Tables[0].DefaultView;
                        this.Repeater1.DataBind();
                        DataSet ds1 = xm.getDataSet("SELECT SUM(user_rmb) AS user_rmb FROM [user_shop] WHERE user_name='" + name + "'");
                        this.Literal1.Text = ds1.Tables[0].Rows[0]["user_rmb"].ToString();
                    }

                    //load user information
                    DataSet ds2 = xm.getDataSet("SELECT * FROM [user_a] WHERE [user_name]='" + name + "' ");
                    this.TextBox8.Text = ds2.Tables[0].Rows[0]["user_name"].ToString();
                    this.TextBox11.Text = ds2.Tables[0].Rows[0]["user_zip"].ToString();
                    this.TextBox1.Text = ds2.Tables[0].Rows[0]["user_adr1"].ToString();
                    this.TextBox2.Text = ds2.Tables[0].Rows[0]["user_adr2"].ToString();
                    this.TextBox9.Text = ds2.Tables[0].Rows[0]["user_cardnum"].ToString();
                    this.TextBox10.Text = ds2.Tables[0].Rows[0]["user_cardname"].ToString();


                }

                else if (Request.QueryString["ac"].ToString().ToLower() == "delall")
                {
                    s.rScript(this.GetType(), "<script>alert('Delete all');location='uesr_gw.aspx';</script>", this.Page);
                }
            }
            else
            {
                if (Request.QueryString["ac"].ToString().ToLower() == "delall")
                {

                    string[] pid = Request.Form["sProduct"].ToString().Split(',');
                    for (int i = 0; i < pid.Length; i++)
                    {

                        xm.setDS("DELETE FROM [user_shop] WHERE id=" + pid[i].ToString());

                    }
                    s.rScript(this.GetType(), "<script>location='uesr_gw.aspx?page=" + Session["lp"].ToString() + "';</script>", this.Page);
                }

            }
        }
    }

    protected void edit1_Click(object sender, ImageClickEventArgs e)
    {
        this.TextBox1.Enabled = true;
        this.TextBox2.Enabled = true;
        this.TextBox8.Enabled = true;
        this.TextBox11.Enabled = true;


    }

    protected void edit2_Click(object sender, ImageClickEventArgs e)
    {
        this.TextBox9.Enabled = true;
        this.TextBox10.Enabled = true;


    }

    protected void save1_Click(object sender, ImageClickEventArgs e)
    {
        this.TextBox1.Enabled = false;
        this.TextBox2.Enabled = false;
        this.TextBox8.Enabled = false;
        this.TextBox11.Enabled = false;

        string name = Session["useradmin"].ToString();
        string rname = s.wipeScript(this.TextBox8.Text.Trim());
        string zip = s.wipeScript(this.TextBox11.Text.Trim());
        string adr1 = s.wipeScript(this.TextBox1.Text.Trim());
        string adr2 = s.wipeScript(this.TextBox2.Text.Trim());
        DataSet ds = xm.getDataSet("UPDATE [user_a] SET [user_rname]='" + rname  + "',[user_zip]='" + zip + "',[user_adr1]='" + adr1 + "',[user_adr2]='" + adr2 + "'  WHERE [user_name]='" + name + "'");
        s.rScript(this.GetType(), "<script>alert('Succeed ！！！')</script>", this.Page);
    }

    protected void save2_Click(object sender, ImageClickEventArgs e)
    {
        this.TextBox9.Enabled = false;
        this.TextBox10.Enabled = false;

        string name = Session["useradmin"].ToString();
        string cardnum = s.wipeScript(this.TextBox9.Text.Trim());
        string cardname = s.wipeScript(this.TextBox10.Text.Trim());
        DataSet ds = xm.getDataSet("UPDATE [user_a] SET [user_cardnum]='" + cardnum + "',[user_cardname]='" + cardname + "'  WHERE [user_name]='" + name + "'");
        s.rScript(this.GetType(), "<script>alert('Succeed ！！！')</script>", this.Page);
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}