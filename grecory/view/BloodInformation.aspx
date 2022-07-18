<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BloodInformation.aspx.cs" Inherits="grecory.view.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../asset/lib/bootsrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../asset/lib/bootsrap/css/st1.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <title>BloodInfo</title>

</head>
<body>
    <div class="banner-container">
        <h1 class="font-weight-bolder mb-2">Blood Information</h1>
    </div>
    <div class="row">
        <div class="col-lg-4">
            <div class="features-col text-center"  onclick="window.open('Apoisitive.aspx')">
                <img src="../asset/image/blood.png" alt="blood" width="100px" height="100px">
                <h2>A+</h2>
                <h3  runat="server" id="H1">Num</h3>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="features-col text-center" onclick="window.open('Bpositive.aspx')">
                <img src="../asset/image/blood.png" alt="blood" width="100px" height="100px">
                <h2>B+</h2>
                <h3  runat="server" id="H2">Num</h3>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="features-col text-center" onclick="window.open('Opositive.aspx')">
                <img src="../asset/image/blood.png"  alt="blood" width="100px" height="100px">
                <h2>O+</h2>
                <h3  runat="server" id="H3">Num</h3>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-4">
            <div class="features-col text-center" onclick="window.open('Anegative.aspx')">
                <img src="../asset/image/blood.png" alt="blood" width="100px" height="100px">
                <h2>A-</h2>
                <h3  runat="server" id="H5">Num</h3>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="features-col text-center" onclick="window.open('Bnegative.aspx')">
                <img src="../asset/image/blood.png" alt="blood" width="100px" height="100px">
                <h2>B-</h2>
                <h3  runat="server" id="H6">Num</h3>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="features-col text-center" onclick="window.open('Onegative.aspx')">
                <img src="../asset/image/blood.png" alt="blood" width="100px" height="100px">
                <h2>O-</h2>
               <h3  runat="server" id="Otb">Num</h3>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-4">
            <div class="features-col text-center" onclick="window.open('ABpositive.aspx')">
                <img src="../asset/image/blood.png" alt="blood" width="100px" height="100px">
                <h2>AB+</h2>
                <h3  runat="server" id="H4">Num</h3>
            </div>
        </div>
        <div class="col-lg-4" onclick="window.open('ABnegative.aspx')">
            <div class="features-col text-center">
                <img src="../asset/image/blood.png" alt="blood" width="100px" height="100px">
                <h2>AB-</h2>
                <h3  runat="server" id="H7">Num</h3>
            </div>
        </div>


    </div>




    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
