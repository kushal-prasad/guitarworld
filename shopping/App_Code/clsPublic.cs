using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for clsPublic
/// </summary>
public class clsPublic : Page
{
	public clsPublic()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DatabaseClass xm = new DatabaseClass();
    public void rScript(Type ct, string cs, Page p)
    {
        ClientScriptManager s = p.ClientScript;
        s.RegisterStartupScript(ct, "", cs);
    }
    public void setInfo(string TitleInfo, Page p)
    {
        DataSet ds = xm.getDataSet("SELECT * FROM [index] ");
        p.Title = ds.Tables[0].Rows[0]["index_name"].ToString() + TitleInfo;
        HtmlMeta HM = new HtmlMeta();
        HM.Name = "keywords";
        HM.Content = ds.Tables[0].Rows[0]["index_meta"].ToString();
        p.Header.Controls.Add(HM);

        HM = new HtmlMeta();
        HM.Name = "Description";
        HM.Content = ds.Tables[0].Rows[0]["index_metas"].ToString();
        p.Header.Controls.Add(HM);

    }
    public string getData(string TableName, string FielDsName)
    {
        xm.getDataSet("SELECT * FROM  [" + TableName + "]");
        return xm.ds.Tables[0].Rows[0][FielDsName].ToString();

    }


    public string getleft(string s1, Int32 J)
    {
        if (s1.Length > J)
        {
            return s1.Substring(0, J) + "...";
        }
        else
        {
            return s1;
        }
    }
    public string wipeScript(string html)
    {
        System.Text.RegularExpressions.Regex regex1 = new System.Text.RegularExpressions.Regex(@"<script[\s\S]+</script *>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex2 = new System.Text.RegularExpressions.Regex(@" href *= *[\s\S]*script *:", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex3 = new System.Text.RegularExpressions.Regex(@" on[\s\S]*=", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex4 = new System.Text.RegularExpressions.Regex(@"<iframe[\s\S]+</iframe *>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex5 = new System.Text.RegularExpressions.Regex(@"<frameset[\s\S]+</frameset *>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        html = regex1.Replace(html, ""); //过滤<script></script>标记 
        html = regex2.Replace(html, ""); //过滤href=javascript: (<A>) 属性 
        html = regex3.Replace(html, " _disibledevent="); //过滤其它控件的on...事件 
        html = regex4.Replace(html, ""); //过滤iframe 
        html = regex5.Replace(html, ""); //过滤frameset 
        return html;
    }
    private string HTMLEncode(string fString)
    {
        if (fString != string.Empty)
        {
            ///替换尖括号
            fString.Replace("<", "&lt;");
            fString.Replace(">", "&rt;");
            ///替换引号
            fString.Replace(((char)34).ToString(), "&quot;");
            fString.Replace(((char)39).ToString(), "&#39;");
            ///替换空格
            fString.Replace(((char)13).ToString(), "");
            ///替换换行符
            fString.Replace(((char)10).ToString(), "<BR> ");
        }
        return (fString);
    }
}