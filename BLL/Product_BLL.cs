﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Web;
using Entity;
using DAL;


namespace BLL
{
     public class Product_BLL
    {
        public static List<Product_Entity> Listar()
        {
            return Product_Dal.Listar();
        }

        public static List<Product_Entity> ListarByCat(Guid idcat)
        {
            return Product_Dal.ListarByCat(idcat);
        }
        public static Product_Entity Listar(Guid idProd)
        {
            return Product_Dal.Listar(idProd);
        }
        public static bool Create(Product_Entity objProduct)
        {
            return Product_Dal.Create(objProduct);
        }
    }
}
