using AutoSalonDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace AutoSkolaRestService.Controllers
{
    public class OceneController : ApiController
    {
        AutoSalonEntities entities = new AutoSalonEntities();

        public IEnumerable<Ocena> Get()
        {
            return entities.Ocenas
                .Where(o => o.Status == "Aktivan").ToList();
        }

        public Ocena Get(int id)
        {
            return entities.Ocenas.Where(o => o.Id == id && p.Status == "Aktivan").FirstOrDefault();
        }

        public IHttpActionResult Post(Ocena o)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            entities.Ocenas.Add(o);
            entities.SaveChanges();

            //return CreatedAtRoute("CREATE Ocena", o.Id, o);
            return Ok(k);
        }

        public IHttpActionResult Put(int id, Ocena o)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest("Not a valid model");
            }

            Ocena existing = entities.Ocenas.Where(oc => oc.Id == id).FirstOrDefault();
            if (existing == null)
            {
                return NotFound();
            }

            Model m = entities.Models.Where(oc => oc.Id == o.IdModela).FirstOrDefault();
            if (m == null)
            {
                return NotFound();
            }

            Korisnik kor = entities.Korisniks.Where(korisnik => korisnik.Id == o.IdKorisnika).FirstOrDefault();
            if (kor == null)
            {
                return NotFound();
            }

            existing.Vrednost = k.Vrednost;
            existing.Model = m;
            existing.IdModela = k.IdModela;
            existing.Korisnik = kor;
            existing.IdKorisnika = k.IdKorisnika;
            entities.SaveChanges();
            return Ok(existing);
        }

        public IHttpActionResult Delete(int id)
        {
            if (id == null)
            {
                return BadRequest(ModelState);
            }

            Ocena existing = entities.Ocenas.Where(o => o.Id == id).FirstOrDefault();

            // logicko brisanje
            existing.Status = "Obrisan";

            //fizicko brisanje
            //entities.Ocenas.Remove(existing);

            entities.SaveChanges();

            return Ok();
        }

    }
}
