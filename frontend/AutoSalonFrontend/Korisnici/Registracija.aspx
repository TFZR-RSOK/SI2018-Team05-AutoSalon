<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registracija.aspx.cs" Inherits="AutoSalonFrontend.Korisnici.Registracija" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">
    
    <script type="text/javascript">
        $("form").submit(function (event) {
            event.preventDefault();

            var form = {
                "KorisnickoIme": $("#username").val(),
                "Ime": $("#ime").val(),
                "Prezime": $("#prezime").val(),
                "Lozinka": $("#password").val(),
                "Tip": "Korisnik",
                "Status": "Aktivan"
            }

            $.ajax({
                type: "POST",
                url: apiUrl + "Korisnici",
                data: JSON.stringify(form),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    localStorage.setItem("id", response.Id)
                    localStorage.setItem("tip", response.Tip)
                    alert("Uspesno ste se registrovali");
                    window.location.replace(window.location.origin + "/Korisnici/Login");
                },
                error: function (msg) {
                    alert("Greska prilikom registracije");
                }
            });
        });
    </script>

    <div>
        <h2>Unesite vase podatke</h2>

        <form>
          <div class="form-group">
            <label for="username">Korisnicko Ime</label>
            <input type="text" class="form-control" id="username" placeholder="Korisnicko Ime" required/>
          </div>
          <div class="form-group">
            <label for="ime">Ime</label>
            <input type="text" class="form-control" id="ime" placeholder="Ime" required/>
          </div>
          <div class="form-group">
            <label for="prezime">Prezime</label>
            <input type="text" class="form-control" id="prezime" placeholder="Prezime" required/>
          </div>
          <div class="form-group">
            <label for="password">Lozinka</label>
            <input type="password" class="form-control" id="password" placeholder="Lozinka" />
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    
</asp:Content>
