<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="grecory.view.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../asset/lib/bootsrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../asset/lib/bootsrap/css/st2.css"
    
    
</head>
<body>
    
    <div class="container-fluid">
        <div class="row" style="height:150px">
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <h1>Sign Up</h1>
                <form runat="server">
                    <div class="mb-3">
                        <label for="EmailId" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="EmailId" runat="server" required="required" >
                    </div>
                    <div class="mb-3">
                        <label for="UserPasswordId" class="form-label">Password</label>
                        <input type="password" class="form-control" id="UserPasswordId" runat="server" required="required" >
                    </div>
                    <div class="mb-3 form-check">
                        <input type="radio" class="form-check-input" id="SellerRadio" name="Role" runat="server">
                        <label class="form-check-label" for="exampleCheck1">User</label>
                        <br>
                        <input type="radio" class="form-check-input" id="AdminRadio" checked="true" name="Role" runat="server">
                        <label class="form-check-label" for="AdminRadio" >Admin</label>

                    </div>
                    <div class="mb-3 d-grid">
                        <label id="infomsg" runat="server"></label>
                        <asp:Button Text="logIn" class="btn btn-primary btn-block" runat="server" ID="logInBtn" OnClick="logInBtn_Click"/>
                        <!--<button type="submit" class="btn btn-primary btn-block">Login</button>-->
                        
                    </div>
                    

                </form>
            </div>
        </div>

    </div>

</body>
</html>
