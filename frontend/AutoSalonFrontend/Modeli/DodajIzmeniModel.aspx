<%@ Page Title="Model" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DodajIzmeniModel.aspx.cs" Inherits="AutoSalonFrontend.Modeli.DodajIzmeniModel" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">
    
    <div>
        <h2>Unos Modela</h2>

        <form>
          <div class="form-group">
            <label for="nazivModela">Naziv Modela</label>
            <input type="text" class="form-control" id="nazivModela" placeholder="Naziv Modela" />
          </div>
            <div class="form-group">
            <label for="motor">Motor</label>
            <input type="number" class="form-control" id="motor" placeholder="Motor (Kubikaza)" />
          </div>
            <div class="form-group">
            <label for="snaga">Snaga</label>
            <input type="number" class="form-control" id="snaga" placeholder="Snaga (KS)" />
          </div>
          <div class="form-group">
            <label for="maksimalnaBrzina">MaksimalnaBrzina</label>
            <input type="number" class="form-control" id="maksimalnaBrzina" placeholder="Maksimalna brzina (km/h)" />
          </div>
          <div class="form-group">
            <label for="prosecnaPotrosnja">Prosecna potrosnja</label>
            <input type="number" class="form-control" id="prosecnaPotrosnja" placeholder="Prosecna potrosnja (l/100km)" />
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
            <select id="proizvodjac" class="form-control">
                <option>Mercedes</option>
                <option>Audi</option>
                <option>BMW</option>
            </select>
          </div>
          <div class="form-group">
            <label for="slika">Glavna slika</label>
            <input type="text" class="form-control" id="slika" placeholder="Glavna slika (URL)" />
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



