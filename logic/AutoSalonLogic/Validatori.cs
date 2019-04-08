using AutoSalonDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutoSalonLogic
{
    public class Validatori
    {
        public static bool modelFormaValidna(Model m)
        {
            if (m.NazivModela == "")
            {
                return false;
            }
            if (m.Motor == null)
            {
                return false;
            }
            if (m.Snaga == null)
            {
                return false;
            }
            if (m.MaksimalnaBrzina == null)
            {
                return false;
            }
            if (m.ProsecnaPotrosnja == null)
            {
                return false;
            }
            if (m.Slika == "")
            {
                return false;
            }
            if (m.Status == "")
            {
                return false;
            }
            if (m.IdProizvodjaca == null)
            {
                return false;
            }

            return true;
        }
    }
}
