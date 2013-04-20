using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ttttt : System.Web.UI.Page
{
    public DatabaseClass xm = new DatabaseClass();
    public clsPublic s = new clsPublic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            s.setInfo("", this.Page);         
            DataSet ds = xm.getDataSet("SELECT TOP 3 * FROM [news] ORDER BY id DESC");
            this.Repeater3.DataSource = xm.ds.Tables[0].DefaultView;
            this.Repeater3.DataBind();                           
        }
    }
    protected void Repeater3_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}