<%@Page Title="Pregled Proizvodjaca" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PregledProizvodjaca.aspx.cs" Inherits="AutoSalonFrontend.Proizvodjaci.PregledProizvodjaca" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">

    <script type ="text/javascript">

        $(document).ready(function () {

            if (!isLogedIn() || !isAdmin()) {
                $("#dodaj").css({display: "none"})
            }

            $.ajax({
                type: "GET",
                url: apiUrl + "Proizvodjaci",
                success: function (response) {
                    var proizvodjaci = response.$values;

                    for (var index in proizvodjaci) {
                        var m = proizvodjaci[index];
                        if (m.hasOwnProperty("$ref")) {
                            continue
                        }

                        var Naziv = $("<td>").text(m.NazivProizvodjaca);
                        var Tip = $("<td>").text(m.Tip);
                        var Modeli = $("<td>").text(m.Models.$values.length);

                        var Opcije = $("<td>");
                        var Izmena = $("<a>").text("Izmena").attr("href", window.location.origin + "/Proizvodjaci/DodajIzmeniProizvodjaca?id=" + m.Id).attr("class", "btn btn-warning")
                        var obrisiFun = function (event) {
                            event.preventDefault();
                            var r = confirm("Brisanjem proizvodjaca ce biti obrisani i svi povezani modeli, da li ste sigurni?");
                            if (r == true) {
                                $.ajax({
                                    type: "DELETE",
                                    url: apiUrl + "Proizvodjaci/" + event.target.id,
                                    success: function (response) {
                                        alert("Proizvodjac uspesno obrisan");
                                        window.location.reload();
                                    },
                                    error: function (msg) {
                                        alert("Greska prilikom brisanja proizvodjaca");
                                    }
                                });
                            }
                        }
                        var Brisanje = $("<button>").text("Brisanje").attr("class", "btn btn-danger").attr("id", m.Id).on("click", obrisiFun)
                        if (isAdmin()) {
                            Opcije.append(Izmena, Brisanje);
                        }                       

                        $("#proizvodjaci").find('tbody')
                            .append($('<tr>')
                                .append(Naziv, Tip, Modeli, Opcije));

                    }
                }
            });
        });

    </script>
    
    <div>
        <h2>Pregled Proizvodjaca
           <span id="dodaj" class="float-right"><a runat="server" href="~/Proizvodjaci/DodajIzmeniProizvodjaca">Dodaj novog</a></span>
        </h2>

        <table id="proizvodjaci" class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Naziv</th>
                    <th scope="col">Tip</th>
                    <th scope="col">Broj modela</th>
                    <th scope="col">Opcije</th>
                </tr>
            </thead>
            <tbody>
                
            </tbody>
        </table>
    </div>
    
</asp:Content>