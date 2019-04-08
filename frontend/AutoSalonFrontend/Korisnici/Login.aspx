<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AutoSalonFrontend.Korisnici.Login" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">
    
    <script type="text/javascript">
        $("form").submit(function (event) {
            event.preventDefault();

            var form = {
                "KorisnickoIme": $("#username").val(),
                "Lozinka": $("#password").val()
            }

            $.ajax({
                type: "POST",
                url: apiUrl + "Login",
                data: JSON.stringify(form),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    localStorage.setItem("id", response.Id)
                    localStorage.setItem("tip", response.Tip)
                    alert("Uspesno ste se ulogovali");
                    window.location.replace(window.location.origin + "/Modeli/PregledModela");
                },
                error: function (msg) {
                    alert("Pogresno korisnicko ime i/ili lozinka");
                }
            });
        });
    </script>

    <div>
        <h2>Unesite kredencijale</h2>

        <form>
          <div class="form-group">
            <label for="username">Korisnicko Ime</label>
            <input type="text" class="form-control" id="username" placeholder="Korisnicko Ime" />
          </div>
          <div class="form-group">
            <label for="password">Lozinka</label>
            <input type="password" class="form-control" id="password" placeholder="Lozinka" />
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    
</asp:Content>