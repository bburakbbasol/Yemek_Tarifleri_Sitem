using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tarifler : System.Web.UI.Page
{
	Sqlclass clss=new Sqlclass();

	protected void Page_Load(object sender, EventArgs e)
	{
		DataList1.Visible = false;
		SqlCommand cmd = new SqlCommand("Select * from tbl_Tarif where TarifDurum=0",clss.connection());
		SqlDataReader dr=cmd.ExecuteReader();
		DataList1.DataSource = dr;
		DataList1.DataBind();
		clss.connection().Close();
		DataList2.Visible = false;
		SqlCommand cmd2 = new SqlCommand("Select * from tbl_Tarif where TarifDurum=1", clss.connection());
		SqlDataReader dr2 = cmd2.ExecuteReader();
		DataList2.DataSource = dr2;
		DataList2.DataBind();
		clss.connection().Close();

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		DataList1.Visible = true;
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		DataList1.Visible=false;
	}

	protected void Button3_Click(object sender, EventArgs e)
	{
		DataList2.Visible = true;
	}

	protected void Button4_Click(object sender, EventArgs e)
	{
		DataList2.Visible = false;

	}
}