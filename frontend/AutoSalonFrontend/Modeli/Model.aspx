<%@Page Title="Model" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="AutoSalonFrontend.Modeli.Model" %>

<asp:Content ID="BodyContent" runat="server" contentplaceholderid="MainContent">
    
    <div class="container">
        <h2>Mercedes-Benz A class</h2>

        <div class="row">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="height: 400px; width: 500px; margin: 0 auto">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                    <img class="d-block w-100" style="height: auto; width: auto;" src="https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/1-mercedes-benz-a-class-2018-rt-hero-front.jpg?itok=sI7Ve2Q_" 
                        alt="First slide">
                    </div>
                    <div class="carousel-item">
                    <img class="d-block w-100" style="height: auto; width: auto;" src="https://cdn2.buyacar.co.uk/sites/buyacar/files/styles/gallery_adv_wide/public/bg_2017_mercedes_a-class_ftq_dynamic.jpg?itok=vsXNiHKP" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                    <img class="d-block w-100" style="height: auto; width: auto;" src="http://cdn.24.co.za/files/Cms/General/d/7694/8698760d7b4c4b0b8802ec459b520882.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Prethodna</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Sledeca</span>
                </a>
            </div>
        </div>

        <div class="row">
            <table class="table">
                <tbody>
                    <tr>
                        <th scope="col">Proizvodjac</th>
                        <td scope="col">Mercedes-Benz</th>
                    </tr>
                    <tr>
                        <th scope="col">Model</th>
                        <td scope="col">A class</th>
                    </tr>
                    <tr>
                        <th scope="col">Tip</th>
                        <td scope="col">Hatchback</th>
                    </tr>
                    <tr>
                        <th scope="col">Motor</th>
                        <td scope="col">2000 ccm</th>
                    </tr>
                    <tr>
                        <th scope="col">Snaga</th>
                        <td scope="col">200 ks</th>
                    </tr>
                    <tr>
                        <th scope="col">Maskimalna Brzina</th>
                        <td scope="col">230 km/h</th>
                    </tr>
                    <tr>
                        <th scope="col">Prosecna Potrosnja</th>
                        <td scope="col">230 km/h</th>
                    </tr>
                    <tr>
                        <th scope="col">Prosecna Ocena</th>
                        <td scope="col">4.6</th>
                    </tr>
    
                </tbody>
            </table>
        </div>

        <div>
            <h4>Komentari korisnika</h4>

            <div class="card">
                <h5 class="card-header">Pera</h5>
                <div class="card-body">
                    <p class="card-text">Odlican auto</p>
                </div>
            </div>
            
            <div class="card">
                <h5 class="card-header">Zika</h5>
                <div class="card-body">
                    <p class="card-text">Mnogo skup</p>
                </div>
            </div>

            <legend>Ostavite vas komentar</legend>
            <form>
                <div class="form-group">
                    <label for="komentar">Vas komentar</label>
                    <textarea class="form-control" id="komentar" placeholder="Unesite Vas komentar"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Posalji</button>
            </form>

        </div>
    </div>
    
</asp:Content>