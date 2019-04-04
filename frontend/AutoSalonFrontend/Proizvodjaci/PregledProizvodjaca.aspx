<%@Page Title="Pregled Proizvodjaca" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PregledProizvodjaca.aspx.cs" Inherits="AutoSalonFrontend.Modeli.PregledProizvodjaca" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">
    
    <div>
        <h2>Pregled Proizvodjaca
           <span class="float-right"><a runat="server" href="~/Proizvodjaci/DodajIzmeniProizvodjaca">Dodaj novog</a></span>
        </h2>

        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Naziv</th>
                    <th scope="col">Tip</th>
                    <th scope="col">Opcije</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>P1</td>
                    <td>T1</td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>P2</td>
                    <td>T1</td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>P3</td>
                    <td>T2</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
    
</asp:Content>