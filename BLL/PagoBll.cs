﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Entity;

namespace BLL
{
    public class PagoBll
    {
        public static List<Pago_Entity> Listar()
        {
            return PagoDal.Listar();
        }
    }
}
