<%@Page Title="Pregled Modela" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PregledModela.aspx.cs" Inherits="AutoSalonFrontend.Modeli.PregledModela" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">
    
    <div>
        <h2>Pregled Modela
           <span class="float-right"><a runat="server" href="~/Modeli/DodajIzmeniModel">Dodaj novi</a></span>
        </h2>

        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Slika</th>
                    <th scope="col">Naziv</th>
                    <th scope="col">Proizvodjac</th>
                    <th scope="col">Motor</th>
                    <th scope="col">Snaga</th>
                    <th scope="col">Maksimalna brzina</th>
                    <th scope="col">Prosecna potrosnja</th>
                    <th scope="col">Tip</th>
                    <th scope="col">ProsecnaOcena</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Slika</td>
                    <td>M1</td>
                    <td>P1</td>
                    <td>2000</td>
                    <td>200</td>
                    <td>250</td>
                    <td>8.0</td>
                    <td>Hatchback</td>
                    <td>4.5</td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Slika</td>
                    <td>M2</td>
                    <td>P2</td>
                    <td>2000</td>
                    <td>200</td>
                    <td>250</td>
                    <td>8.0</td>
                    <td>SUV</td>
                    <td>4.5</td>
                </tr>
                <tr>
                    <th scope="row">1</th>
                    <td>Slika</td>
                    <td>M3</td>
                    <td>P1</td>
                    <td>2000</td>
                    <td>200</td>
                    <td>250</td>
                    <td>8.0</td>
                    <td>Limuzina</td>
                    <td>4.5</td>
                </tr>
            </tbody>
        </table>
    </div>
    
</asp:Content>