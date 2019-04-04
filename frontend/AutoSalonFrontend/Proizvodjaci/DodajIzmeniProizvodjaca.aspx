<%@ Page Title="Proizvodjac" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DodajIzmeniProizvodjaca.aspx.cs" Inherits="AutoSalonFrontend.Modeli.DodajIzmeniModel" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">
    
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



