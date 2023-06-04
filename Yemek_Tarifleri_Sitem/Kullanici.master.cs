using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
	Sqlclass clss = new Sqlclass();
	protected void Page_Load(object sender, EventArgs e)
	{
		SqlCommand cmd=new SqlCommand("Select * From Tbl_Kategori",clss.connection());
		SqlDataReader read=cmd.ExecuteReader();
		DataList1.DataSource=read;
		DataList1.DataBind();
	}
}
