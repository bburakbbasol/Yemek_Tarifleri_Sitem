using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hakkımızda : System.Web.UI.Page
{
	Sqlclass clss=new Sqlclass();

	protected void Page_Load(object sender, EventArgs e)
	{
		SqlCommand cmd = new SqlCommand("Select * From tbl_hakkımızda",clss.connection());
		SqlDataReader dr=cmd.ExecuteReader();
		DataList2.DataSource = dr;
		DataList2.DataBind();
	}
}