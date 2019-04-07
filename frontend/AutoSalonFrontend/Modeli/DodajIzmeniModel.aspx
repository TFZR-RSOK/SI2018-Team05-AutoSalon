<%@ Page Title="Model" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DodajIzmeniModel.aspx.cs" Inherits="AutoSalonFrontend.Modeli.DodajIzmeniModel" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">
    
    <script type ="text/javascript">

        $(document).ready(function () {
            $.ajax({
                type: "GET",
                url: apiUrl + "Proizvodjaci",
                success: function (response) {
                    var proizvodjaci = response.$values;

                    for (var index in proizvodjaci) {
                        var p = proizvodjaci[index];
                        $("#proizvodjac").append(new Option(p.NazivProizvodjaca, p.Id));
                    }
                }
            });
        });

        $("form").submit(function (event) {
            event.preventDefault();

            var form = {
                "NazivModela": $("#nazivModela").val(),
                "Motor": parseInt($("#motor").val()),
                "Snaga": parseInt($("#snaga").val()),
                "MaksimalnaBrzina": parseInt($("#maksimalnaBrzina").val()),
                "ProsecnaPotrosnja": parseFloat($("#prosecnaPotrosnja").val()),
                "Tip": $("#tip").val(),
                "IdProizvodjaca": parseInt($("#proizvodjac").val()),
                "Slika": $("#slika").val(),
                "Slika1": $("#slika1").val(),
                "Slika2": $("#slika2").val(),
                "Slika3": $("#slika3").val(),
                "Slika4": $("#slika4").val(),
                "Slika5": $("#slika5").val(),
                "Status": "Aktivan"
            }

            $.ajax({
                type: "POST",
                url: apiUrl + "Modeli",
                data: JSON.stringify(form),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    alert("Model uspesno kreiran ");
                    window.location.replace(window.location.origin + "/Modeli/PregledModela");
                },
                error: function (msg) {
                    alert("Greska pri cuvanju modela");
                }
            });
        });

    </script>

    <div>
        <h2>Unos Modela</h2>

        <form >
          <div class="form-group">
            <label for="nazivModela">Naziv Modela</label>
            <input type="text" class="form-control" id="nazivModela" placeholder="Naziv Modela" required/>
          </div>
            <div class="form-group">
            <label for="motor">Motor</label>
            <input type="number" class="form-control" id="motor" placeholder="Motor (Kubikaza)" required/>
          </div>
            <div class="form-group">
            <label for="snaga">Snaga</label>
            <input type="number" class="form-control" id="snaga" placeholder="Snaga (KS)" required/>
          </div>
          <div class="form-group">
            <label for="maksimalnaBrzina">MaksimalnaBrzina</label>
            <input type="number" class="form-control" id="maksimalnaBrzina" placeholder="Maksimalna brzina (km/h)" required/>
          </div>
          <div class="form-group">
            <label for="prosecnaPotrosnja">Prosecna potrosnja</label>
            <input type="number" class="form-control" id="prosecnaPotrosnja" placeholder="Prosecna potrosnja (l/100km)" required/>
          </div>
          <div class="form-group">
            <label for="tip">Tip</label>
            <select id="tip" class="form-control">
                <option>Hatchback</option>
                <option>Limuzina</option>
                <option>SUV</option>
            </select>
          </div>
          <div class="form-group">
            <label for="proizvodjac">Proizvodjac</label>
            <select id="proizvodjac" class="form-control"></select>
          </div>
          <div class="form-group">
            <label for="slika">Glavna slika</label>
            <input type="text" class="form-control" id="slika" placeholder="Glavna slika (URL)" required/>
          </div>
          <div class="form-group">
            <label for="slika1">Slika 1</label>
            <input type="text" class="form-control" id="slika1" placeholder="Slika 1 (URL)" />
          </div>
          <div class="form-group">
            <label for="slika2">Slika 2</label>
            <input type="text" class="form-control" id="slika2" placeholder="Slika 2 (URL)" />
          </div>
          <div class="form-group">
            <label for="slika3">Slika 3</label>
            <input type="text" class="form-control" id="slika3" placeholder="Slika 3 (URL)" />
          </div>
          <div class="form-group">
            <label for="slika4">Slika 4</label>
            <input type="text" class="form-control" id="slika4" placeholder="Slika 4 (URL)" />
          </div>
          <div class="form-group">
            <label for="slika5">Slika 5</label>
            <input type="text" class="form-control" id="slika5" placeholder="Slika 5 (URL)" />
          </div>
            
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    
</asp:Content>



