using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Sqlclass
/// </summary>
public class Sqlclass
{
	public SqlConnection connection()
	{
		SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-LK988TL\SQLEXPRESS;Initial Catalog=Dbo_yemektarifi;Integrated Security=True");

		conn.Open();
		return conn;

	}
}