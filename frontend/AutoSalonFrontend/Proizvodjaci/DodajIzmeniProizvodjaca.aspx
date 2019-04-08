<%@ Page Title="Proizvodjac" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DodajIzmeniProizvodjaca.aspx.cs" Inherits="AutoSalonFrontend.Modeli.DodajIzmeniModel" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">
    
    <script type ="text/javascript">

        $(document).ready(function () {
            const urlParams = new URLSearchParams(window.location.search);
            const id = urlParams.get('id');

            if (id) {
                $.ajax({
                    type: "GET",
                    url: apiUrl + "Proizvodjaci/" + id,
                    success: function (response) {
                        $("#nazivProizvodjaca").val(response.NazivProizvodjaca);
                        $("#tip").val(response.Tip);

                    }
                })
            } 
        });

        $("form").submit(function (event) {
            event.preventDefault();

            const urlParams = new URLSearchParams(window.location.search);
            const id = urlParams.get('id');

            var form = {
                "NazivProizvodjaca": $("#nazivProizvodjaca").val(),
                "Tip": $("#tip").val(),
                "Status": "Aktivan"
            }

            $.ajax({
                type: id ? "PUT" : "POST",
                url: id ? apiUrl + "Proizvodjaci/" + id : apiUrl + "Proizvodjaci",
                data: JSON.stringify(form),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    alert("Proizvodjac uspesno sacuvan ");
                    window.location.replace(window.location.origin + "/Proizvodjaci/PregledProizvodjaca");
                },
                error: function (msg) {
                    alert("Greska pri cuvanju proizvodjaca");
                }
            });
        });

    </script>

    <div>
        <h2>Unos Proizvodjaca</h2>

        <form>
          <div class="form-group">
            <label for="nazivProizvodjaca">Naziv Proizvodjaca</label>
            <input type="text" class="form-control" id="nazivProizvodjaca" placeholder="Naziv Proizvodjaca" />
          </div>
          <div class="form-group">
            <label for="tip">Tip</label>
            <select id="tip" class="form-control">
                <option>Automobili</option>
                <option>Komercijalna vozila</option>
            </select>
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    
</asp:Content>



