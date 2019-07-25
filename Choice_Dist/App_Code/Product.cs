using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
    public Product()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public string UPCCode { get; set; }
    public string ProductName { get; set; }
    public float ProductAmount { get; set; }
    public string ProductDescription { get; set; }
    public string ProductImage { get; set; }
    public int QuantityInStock { get; set; }
}