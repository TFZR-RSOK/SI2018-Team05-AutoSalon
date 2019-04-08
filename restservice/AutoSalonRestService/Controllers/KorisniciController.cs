using AutoSalonDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace AutoSkolaRestService.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class KorisniciController : ApiController
    {
        AutoSalonEntities entities = new AutoSalonEntities();

        public IEnumerable<Korisnik> Get()
        {
            return entities.Korisniks
                .Where(p => p.Status == "Aktivan").ToList();
        }

        public Korisnik Get(int id)
        {
            return entities.Korisniks.Where(k => k.Id == id && k.Status == "Aktivan").FirstOrDefault();
        }

        public IHttpActionResult Post(Korisnik k)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            entities.Korisniks.Add(k);
            entities.SaveChanges();

            //return CreatedAtRoute("CREATE Korisnik", k.Id, p);
            return Ok(k);
        }

        public IHttpActionResult Put(int id, Korisnik k)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest("Not a valid model");
            }

            Korisnik existing = entities.Korisniks.Where(kor => kor.Id == id).FirstOrDefault();
            if (existing == null)
            {
                return NotFound();
            }

            existing.KorisnickoIme = k.KorisnickoIme;
            existing.Lozinka = k.Lozinka;
            existing.Ime = k.Ime;
            existing.Prezime = k.Prezime;
            existing.Tip = k.Tip;
            existing.Status = "Aktivan";
            entities.SaveChanges();
            return Ok(existing);
        }

        public IHttpActionResult Delete(int id)
        {
            if (id == null)
            {
                return BadRequest(ModelState);
            }

            Korisnik existing = entities.Korisniks.Where(kor => kor.Id == id).FirstOrDefault();

            // logicko brisanje
            existing.Status = "Obrisan";

            //fizicko brisanje
            //entities.Korisniks.Remove(existing);

            entities.SaveChanges();

            return Ok();
        }

    }
}
