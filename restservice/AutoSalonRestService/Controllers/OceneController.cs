using AutoSalonDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace AutoSkolaRestService.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
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
            return entities.Ocenas.Where(o => o.Id == id && o.Status == "Aktivan").FirstOrDefault();
        }

        public IHttpActionResult Post(Ocena o)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            o.Status = "Aktivan";
            entities.Ocenas.Add(o);
            entities.SaveChanges();

            //return CreatedAtRoute("CREATE Ocena", o.Id, o);
            return Ok(o);
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

            existing.Vrednost = o.Vrednost;
            existing.Model = m;
            existing.IdModela = m.Id;
            existing.Korisnik = kor;
            existing.IdKorisnika = kor.Id;
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
