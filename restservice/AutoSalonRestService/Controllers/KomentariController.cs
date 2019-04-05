using AutoSalonDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace AutoSkolaRestService.Controllers
{
    public class KomentariController : ApiController
    {
        AutoSalonEntities entities = new AutoSalonEntities();

        public IEnumerable<Komentar> Get()
        {
            return entities.Komentars
                .Where(p => p.Status == "Aktivan").ToList();
        }

        public Komentar Get(int id)
        {
            return entities.Komentars.Where(p => p.Id == id && p.Status == "Aktivan").FirstOrDefault();
        }

        public IHttpActionResult Post(Komentar k)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            entities.Komentars.Add(k);
            entities.SaveChanges();

            //return CreatedAtRoute("CREATE Komentar", k.Id, k);
            return Ok(k);
        }

        public IHttpActionResult Put(int id, Komentar k)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest("Not a valid model");
            }

            Komentar existing = entities.Komentars.Where(kom => kom.Id == id).FirstOrDefault();
            if (existing == null)
            {
                return NotFound();
            }

            Model m = entities.Models.Where(kom => kom.Id == k.IdModela).FirstOrDefault();
            if (m == null)
            {
                return NotFound();
            }

            Korisnik kor = entities.Korisniks.Where(korisnik => korisnik.Id == k.IdKorisnika).FirstOrDefault();
            if (kor == null)
            {
                return NotFound();
            }

            existing.Tekst = k.Tekst;
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

            Komentar existing = entities.Komentars.Where(k => k.Id == id).FirstOrDefault();

            // logicko brisanje
            existing.Status = "Obrisan";

            //fizicko brisanje
            //entities.Komentars.Remove(existing);

            entities.SaveChanges();

            return Ok();
        }

    }
}
