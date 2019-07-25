using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for ChoiceDist_DAL
/// </summary>
public class ChoiceDist_DAL
{
    public SqlConnection conn;
    public ChoiceDist_DAL()
    {
        conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=CHOICE_INVENTORY;Integrated Security=True");
    }
    public int AddProduct(Product prod)
    {
        int iD = 0;
        try
        {
            conn.Open();
            SqlCommand insertCommand = new SqlCommand("usp_AddProduct", conn);
            insertCommand.CommandType = CommandType.StoredProcedure;
            insertCommand.Parameters.AddWithValue("@ipvCode", prod.UPCCode);
            insertCommand.Parameters.AddWithValue("@ipvName", prod.ProductName);
            insertCommand.Parameters.AddWithValue("@ipvDescription", prod.ProductDescription);
            insertCommand.Parameters.AddWithValue("@ipvImageLocation", prod.ProductImage);
            insertCommand.Parameters.AddWithValue("@ipvQuantity", prod.QuantityInStock);
            insertCommand.Parameters.AddWithValue("@ipvProdAmt", prod.ProductAmount);
            SqlParameter sqlParameter = new SqlParameter("@opvID", SqlDbType.Int);
            sqlParameter.Direction = ParameterDirection.Output;
            insertCommand.Parameters.Add(sqlParameter);
            int count =insertCommand.ExecuteNonQuery();
           
            if (count == 1)
            {
                iD = int.Parse(sqlParameter.Value.ToString());
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
        return iD;
    }
}