using AutoSalonDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace AutoSalonRestService.Controllers

{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class LoginController : ApiController
    {
        AutoSalonEntities entities = new AutoSalonEntities();

        public IHttpActionResult Post(Korisnik k)
        {
            if (k.KorisnickoIme == "" || k.Lozinka == "")
            {
                return BadRequest(ModelState);
            }
            Korisnik existing = entities.Korisniks.Where(kor => kor.KorisnickoIme == k.KorisnickoIme && kor.Lozinka == k.Lozinka).FirstOrDefault();

            if (existing == null)
            {
                return Unauthorized();
            }
            //return CreatedAtRoute("CREATE Korisnik", k.Id, p);
            return Ok(existing);
        }
    }
}
