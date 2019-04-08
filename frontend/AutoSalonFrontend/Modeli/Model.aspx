<%@Page Title="Model" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="AutoSalonFrontend.Modeli.Model" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">
    
    <script type ="text/javascript">

        const urlParams = new URLSearchParams(window.location.search);
        const id = urlParams.get('id');

        $(document).ready(function () {
            $.ajax({
                type: "GET",
                url: apiUrl + "Modeli/" + id,
                success: function (response) {
                    $("#naziv").text(response.Proizvodjac.NazivProizvodjaca + " - " + response.NazivModela);
                    $("#proizvodjac").text(response.Proizvodjac.NazivProizvodjaca);
                    $("#model").text(response.NazivModela);
                    $("#tip").text(response.Tip);
                    $("#motor").text(response.Motor + " cm3");
                    $("#snaga").text(response.Snaga + " ks");
                    $("#brzina").text(response.MaksimalnaBrzina + " ks");
                    $("#potrosnja").text(response.ProsecnaPotrosnja + " l/100km");
                    $("#prosecnaOcena").text(response.ProsecnaOcena);

                    if (response.Slika) {
                        $("#slike").append($("<img>").attr("src", response.Slika).attr("alt", "Nema slike").css({ "height": "200px", "width": "auto" }))
                    }
                    if (response.Slika1) {
                        $("#slike").append($("<img>").attr("src", response.Slika1).attr("alt", "Nema slike").css({ "height": "200px", "width": "auto" }))
                    }
                    if (response.Slika2) {
                        $("#slike").append($("<img>").attr("src", response.Slika2).attr("alt", "Nema slike").css({ "height": "200px", "width": "auto" }));
                    }
                    if (response.Slika3) {
                        $("#slike").append($("<img>").attr("src", response.Slika3).attr("alt", "Nema slike").css({ "height": "200px", "width": "auto" }))
                    }
                    if (response.Slika4) {
                        $("#slike").append($("<img>").attr("src", response.Slika4).attr("alt", "Nema slike").css({ "height": "200px", "width": "auto" }))
                    }
                    if (response.Slika5) {
                        $("#slike").append($("<img>").attr("src", response.Slika5).attr("alt", "Nema slike").css({ "height": "200px", "width": "auto" }))
                    }

                    var komentari = response.Komentars.$values;

                    for (var index in komentari) {
                        var komentar = komentari[index];
                        if (komentar.hasOwnProperty("$ref")) {
                            continue
                        }
                        var Korisnik = $("<div>").append($("<b>").text(komentar.Korisnik.KorisnickoIme))
                        var Tekst = $("<div>").text(komentar.Tekst);

                        $("#komentari").append(Korisnik, Tekst, $("<hr>"));

                        for (var index1 in komentar.Korisnik.Komentars.$values) {
                            var komentar1 = komentar.Korisnik.Komentars.$values[index1];
                            if (komentar1.hasOwnProperty("$ref")) {
                                continue
                            }
                            var Korisnik = $("<div>").append($("<b>").text(komentar.Korisnik.KorisnickoIme))
                            var Tekst = $("<div>").text(komentar1.Tekst);

                            $("#komentari").append(Korisnik, Tekst, $("<hr>"));

                        }
                    }

                }
            });
        });

        $('form').submit(function (event) {
            event.preventDefault();

            var form = {
                "Tekst": $("#komentar").val(),
                "IdModela": parseInt(urlParams.get('id')),
                "IdKorisnika": 1
            }

            console.log(form)

            $.ajax({
                type: "POST",
                url: apiUrl + "Komentari",
                data: JSON.stringify(form),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    alert("Komentar uspesno poslat");
                    window.location.reload();
                },
                error: function (msg) {
                    alert("Greska pri cuvanju komentara");
                }
            });
        });
        //console.log($('form'));
        function posaljiOcenu(event) {
            event.preventDefault();

            var form = {
                "Vrednost": parseInt($("#ocena").val()),
                "IdModela": parseInt(urlParams.get('id')),
                "IdKorisnika": 1
            }

            console.log(form)

            $.ajax({
                type: "POST",
                url: apiUrl + "Ocene",
                data: JSON.stringify(form),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    alert("Ocena uspesno poslata");
                    window.location.reload();
                },
                error: function (msg) {
                    alert("Greska pri cuvanju ocene");
                }
            });
        };

    </script>

    <div class="container">
        <h2 id="naziv"></h2>

        <div id="slike">
        </div>

        <div class="row">
            <table class="table">
                <tbody>
                    <tr>
                        <th scope="col">Proizvodjac</th>
                        <td id="proizvodjac" scope="col"></th>
                    </tr>
                    <tr>
                        <th scope="col">Model</th>
                        <td id="model"scope="col"></th>
                    </tr>
                    <tr>
                        <th scope="col">Tip</th>
                        <td id="tip" scope="col"></th>
                    </tr>
                    <tr>
                        <th scope="col">Motor</th>
                        <td id="motor" scope="col"></th>
                    </tr>
                    <tr>
                        <th scope="col">Snaga</th>
                        <td id="snaga" scope="col"></th>
                    </tr>
                    <tr>
                        <th scope="col">Maskimalna Brzina</th>
                        <td id="brzina" scope="col"></th>
                    </tr>
                    <tr>
                        <th scope="col">Prosecna Potrosnja</th>
                        <td id="potrosnja" scope="col"></th>
                    </tr>
                    <tr>
                        <th scope="col">Prosecna Ocena</th>
                        <td id="prosecnaOcena" scope="col"></th>
                    </tr>
    
                </tbody>
            </table>
        </div>

        <div>            
            
            <div class="form-group">
                <label for="ocena">Ocena</label>
                <select id="ocena" class="form-control">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary" onclick="posaljiOcenu(event)">Posalji</button>
        
        </div>

        <div>
            <h4>Komentari korisnika</h4>
            <div id="komentari">
            </div>

            <legend>Ostavite vas komentar</legend>
            <form id="formKomentar" name="formKomentar">
                <div class="form-group">
                    <label for="komentar">Vas komentar</label>
                    <textarea class="form-control" id="komentar" placeholder="Unesite Vas komentar" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Posalji</button>
            </form>

        </div>
    </div>
    
</asp:Content>