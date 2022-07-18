<%@ Page Title="" Language="C#" MasterPageFile="~/view/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="grecory.view.admin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h1 class="text-danger">Donor Information</h1>
             
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Donor Name</label>
                    <input type="text" class="form-control" id="dName" runat="server">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Donor Blood Group</label>
                    <input type="text" class="form-control" id="dBloodgroup" runat="server">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Donor Phone</label>
                    <input type="text" class="form-control" id="dPhone" runat="server">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Donor Age</label>
                    <input type="text" class="form-control" id="dAge" runat="server">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Donate Date</label>
                    <input type="date" class="form-control" id="dDate" runat="server">
                </div>
                 <label id="ErrMsg" runat="server" class="text-danger"></label><br />
                <asp:Button Text="Save" class="btn btn-danger" runat="server" ID="SaveBtn" OnClick="SaveBtn_Click" />
                <asp:Button Text="Edit" class="btn btn-danger" runat="server" ID="EditBtn" OnClick="EditBtn_Click" />
                <asp:Button Text="Delete" class="btn btn-danger" runat="server" ID="DeleteBtn" OnClick="DeleteBtn_Click" />


            </div>
            <div class="col-md-8">
               <h1 class="text-center text-danger">Donar Details</h1>
                <asp:GridView runat="server" class="table table-hover" ID="DonorGV" AutoGenerateSelectButton="True" OnSelectedIndexChanged="DonorGV_SelectedIndexChanged">
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
