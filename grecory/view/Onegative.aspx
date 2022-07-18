<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Onegative.aspx.cs" Inherits="grecory.view.Onegative" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../asset/lib/bootsrap/css/bootstrap.min.css" />
    <title>Onegative BloodInfo</title>
</head>
<body>
    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <h1 class="text-center text-danger">Blood Details</h1>
                <asp:GridView runat="server" class="table " ID="OnegativeInformation">
                </asp:GridView>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <h1 class="text-center text-danger">Donor Details</h1>
                <asp:GridView runat="server" class="table " ID="GridView6">
                </asp:GridView>
            </div>
        </div>
    </div>
</body>
</html>
