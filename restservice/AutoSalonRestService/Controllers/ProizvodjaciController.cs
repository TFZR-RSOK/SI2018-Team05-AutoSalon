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
    public class ProizvodjaciController : ApiController
    {
        AutoSalonEntities entities = new AutoSalonEntities();

        public IEnumerable<Proizvodjac> Get()
        {
            return entities.Proizvodjacs
                .Where(p => p.Status == "Aktivan");
        }

        public Proizvodjac Get(int id)
        {
            return entities.Proizvodjacs.Where(p => p.Id == id && p.Status == "Aktivan").FirstOrDefault();
        }

        public IHttpActionResult Post(Proizvodjac p)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            entities.Proizvodjacs.Add(p);
            entities.SaveChanges();

            //return CreatedAtRoute("CREATE PROIZVODJAC", p.IDProizvodjaca, p);
            return Ok(p);
        }

        public IHttpActionResult Put(int id, Proizvodjac p)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest("Not a valid model");
            }

            Proizvodjac existing = entities.Proizvodjacs.Where(pr => pr.Id == id).FirstOrDefault();
            if (existing == null)
            {
                return NotFound();
            }
            
            existing.NazivProizvodjaca = p.NazivProizvodjaca;
            existing.Tip = p.Tip;
            existing.Status = p.Status;
            entities.SaveChanges();
            return Ok(existing);
        }

        public IHttpActionResult Delete(int id)
        {
            if (id == null)
            {
                return BadRequest(ModelState);
            }

            Proizvodjac existing = entities.Proizvodjacs.Where(p => p.Id == id).FirstOrDefault();

            // logicko brisanje
            existing.Status = "Obrisan";

            //fizicko brisanje
            //entities.Proizvodjacs.Remove(existing);

            entities.SaveChanges();

            return Ok();
        }
    }
}
