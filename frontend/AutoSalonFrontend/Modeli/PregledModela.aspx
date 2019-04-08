<%@Page Title="Pregled Modela" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PregledModela.aspx.cs" Inherits="AutoSalonFrontend.Modeli.PregledModela" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">
    
    <script type ="text/javascript">

        $(document).ready(function () {
            $.ajax({
                type: "GET",
                url: apiUrl + "Modeli",
                success: function (response) {
                    var modeli = response.$values;

                    for (var index in modeli) {
                        var m = modeli[index];
                        if (m.hasOwnProperty("$ref")) {
                            continue
                        }
                        if (m.Status === "Obrisan") {
                            continue
                        }

                        var Slika = $("<td>").append($("<img>").attr("src", m.Slika).attr("height", 200).attr("alt", "Nema sliku"));
                        var nazivProizvodjaca = m.Proizvodjac["NazivProizvodjaca"]
                        var Proizvodjac = $("<td>").text(nazivProizvodjaca);
                        var Naziv = $("<td>").text(m.NazivModela);
                        var Motor = $("<td>").text(m.Motor);
                        var Snaga = $("<td>").text(m.Snaga);
                        var Tip = $("<td>").text(m.Tip);
                        var ProsecnaOcena = $("<td>").text(m.ProsecnaOcena);

                        var Opcije = $("<td>");
                        var Detalji = $("<a>").text("Detalji").attr("href", window.location.origin + "/Modeli/Model?id=" + m.Id).attr("class", "btn btn-primary")
                        var Izmena = $("<a>").text("Izmena").attr("href", window.location.origin + "/Modeli/DodajIzmeniModel?id=" + m.Id).attr("class", "btn btn-warning")
                        
                        var obrisiFun = function (event) {
                            event.preventDefault();
                            var r = confirm("Da li ste sigurni da zelite obrisati model ?");
                            if (r == true) {
                                $.ajax({
                                    type: "DELETE",
                                    url: apiUrl + "Modeli/" + event.target.id,
                                    success: function (response) {
                                        alert("Model uspesno obrisan");
                                        window.location.reload();
                                    },
                                    error: function (msg) {
                                        alert("Greska prilikom brisanja modela");
                                    }
                                });
                            }
                        }
                        var Brisanje = $("<button>").text("Brisanje").attr("class", "btn btn-danger").attr("id", m.Id).on("click", obrisiFun)
                        Opcije.append(Detalji, Izmena, Brisanje);

                        $("#modeli").find('tbody')
                            .append($('<tr>')
                                .append(Slika, Proizvodjac, Naziv, Motor, Snaga, Tip, ProsecnaOcena, Opcije));

                        for (var index1 in m.Proizvodjac.Models.$values) {
                            var m1 = m.Proizvodjac.Models.$values[index1];

                            if (m1.hasOwnProperty("$ref")) {
                                continue
                            }
                            if (m1.Status === "Obrisan") {
                                continue
                            }

                            var Slika = $("<td>").append($("<img>").attr("src", m1.Slika).attr("height", 200).attr("alt", "Nema sliku"));
                            var Proizvodjac = $("<td>").text(nazivProizvodjaca);
                            var Naziv = $("<td>").text(m1.NazivModela);
                            var Motor = $("<td>").text(m1.Motor);
                            var Snaga = $("<td>").text(m1.Snaga);
                            var Tip = $("<td>").text(m1.Tip);
                            var ProsecnaOcena = $("<td>").text(m1.ProsecnaOcena);

                            var Opcije = $("<td>");
                            var Detalji = $("<a>").text("Detalji").attr("href", window.location.origin + "/Modeli/Model?id=" + m1.Id).attr("class", "btn btn-primary")
                            var Izmena = $("<a>").text("Izmena").attr("href", window.location.origin + "/Modeli/DodajIzmeniModel?id=" + m1.Id).attr("class", "btn btn-warning")
                            
                            var obrisiFun = function (event) {
                                event.preventDefault();
                                var r = confirm("Da li ste sigurni da zelite obrisati model ?");
                                if (r == true) {
                                    $.ajax({
                                        type: "DELETE",
                                        url: apiUrl + "Modeli/" + event.target.id,
                                        success: function (response) {
                                            alert("Model uspesno obrisan");
                                            window.location.reload();
                                        },
                                        error: function (msg) {
                                            alert("Greska prilikom brisanja modela");
                                        }
                                    });
                                }
                            }
                            var Brisanje = $("<button>").text("Brisanje").attr("class", "btn btn-danger").attr("id", m1.Id).on("click", obrisiFun)
                            Opcije.append(Detalji, Izmena, Brisanje);

                            $("#modeli").find('tbody')
                                .append($('<tr>')
                                    .append(Slika, Proizvodjac, Naziv, Motor, Snaga, Tip, ProsecnaOcena, Opcije));
                        }
                    }
                }
            });
        });

    </script>

    <div>
        <h2>Pregled Modela
           <span class="float-right"><a runat="server" href="~/Modeli/DodajIzmeniModel">Dodaj novi</a></span>
        </h2>

        <table id="modeli" class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Slika</th>
                    <th scope="col">Proizvodjac</th>
                    <th scope="col">Naziv</th>                    
                    <th scope="col">Motor</th>
                    <th scope="col">Snaga</th>
                    <th scope="col">Tip</th>
                    <th scope="col">ProsecnaOcena</th>
                    <th scope="col">Opcije</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
    
</asp:Content>