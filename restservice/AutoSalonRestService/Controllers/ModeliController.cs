using AutoSalonDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace AutoSkolaRestService.Controllers
{
    public class ModeliController : ApiController
    {
        AutoSalonEntities entities = new AutoSalonEntities();

        public IEnumerable<Model> Get()
        {
            return entities.Models
                .Where(p => p.Status == "Aktivan").ToList();
        }

        public Model Get(int id)
        {
            return entities.Models.Where(p => p.Id == id && p.Status == "Aktivan").FirstOrDefault();
        }

        public IHttpActionResult Post(Model p)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            entities.Models.Add(p);
            entities.SaveChanges();

            //return CreatedAtRoute("CREATE Model", p.IDModela, p);
            return Ok(p);
        }

        public IHttpActionResult Put(int id, Model m)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest("Not a valid model");
            }

            Model existing = entities.Models.Where(mod => mod.Id == id).FirstOrDefault();
            if (existing == null)
            {
                return NotFound();
            }

            Proizvodjac p = entities.Proizvodjacs.Where(pr => pr.Id == m.IdProizvodjaca).FirstOrDefault();
            if (p == null)
            {
                return NotFound();
            }

            existing.NazivModela = m.NazivModela;
            existing.Motor = m.Motor;
            existing.Snaga = m.Snaga;
            existing.MaksimalnaBrzina = m.MaksimalnaBrzina;
            existing.ProsecnaPotrosnja = m.ProsecnaPotrosnja;
            existing.Slika = m.Slika;
            existing.Slika1 = m.Slika1;
            existing.Slika2 = m.Slika2;
            existing.Slika3 = m.Slika3;
            existing.Slika4 = m.Slika4;
            existing.Slika5 = m.Slika5;
            existing.Tip = m.Tip;
            existing.Status = m.Status;
            existing.IdProizvodjaca = m.IdProizvodjaca;
            existing.Proizvodjac = p;
            entities.SaveChanges();
            return Ok(existing);
        }

        public IHttpActionResult Delete(int id)
        {
            if (id == null)
            {
                return BadRequest(ModelState);
            }

            Model existing = entities.Models.Where(p => p.Id == id).FirstOrDefault();

            // logicko brisanje
            existing.Status = "Obrisan";

            //fizicko brisanje
            //entities.Models.Remove(existing);

            entities.SaveChanges();

            return Ok();
        }

    }
}
