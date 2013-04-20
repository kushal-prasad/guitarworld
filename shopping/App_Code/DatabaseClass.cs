using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DatabaseClass
/// </summary>
public class DatabaseClass : System.Web.UI.Page
{
    public OleDbConnection xm;
    public OleDbCommand cmd = new OleDbCommand();
    public DataSet ds = new DataSet();

    public OleDbDataAdapter adt = new OleDbDataAdapter();

	public DatabaseClass()
	{
        xm = new OleDbConnection("provider=microsoft.jet.oledb.4.0;data source=" + Server.MapPath("~/xmdata/%xm.mdb"));

		//
		// TODO: Add constructor logic here
		//
	}

    public DataSet getDataSet(string sqlstr)
    {
        adt = new OleDbDataAdapter(sqlstr, xm);
        ds.Clear();
        xm.Close();
        adt.Fill(ds, "Table");

        return ds;
    }
    public DataSet getDataSet2(string sqlstr, int si, int mi)
    {
        xm.Open();

        adt = new OleDbDataAdapter(sqlstr, xm);
        adt.Fill(ds, si, mi, "tab1");
        xm.Close();
        return ds;
    }
    public bool setDS(string sqlstr)
    {
        xm.Open();
        cmd = new OleDbCommand(sqlstr, xm);
        cmd.ExecuteNonQuery();
        xm.Close();
        return true;
    }
    public void exc(string sqlstr)
    {
        cmd.Connection = xm;
        cmd.CommandText = sqlstr;
        cmd.ExecuteNonQuery();
    }
    public void close()
    {
        if (xm.State == ConnectionState.Open)
        {
            xm.Close();
        }
        xm.Dispose();
        cmd.Dispose();
        xm.Close();
        ds.Dispose();
        adt.Dispose();
    }
}