<%@ Page Title="" Language="C#" MasterPageFile="~/view/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="categories.aspx.cs" Inherits="grecory.view.admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h1 class="text-danger">Blood Information</h1>
             
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Blood Type</label>
                    <input type="text" class="form-control" id="bType" runat="server">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Blood Quantity</label>
                    <input type="text" class="form-control" id="bQuantity" runat="server">
                </div> 
                <label id="ErrMsg" runat="server" class="text-danger"></label><br />
                <asp:Button Text="Save" class="btn btn-danger" runat="server" ID="SaveBtn" OnClick="SaveBtn_Click" />
                <asp:Button Text="Edit" class="btn btn-danger" runat="server" ID="EditBtn" OnClick="EditBtn_Click" />
                <asp:Button Text="Delete" class="btn btn-danger" runat="server" ID="DeleteBtn" OnClick="DeleteBtn_Click" />


            </div>
            <div class="col-md-8">
               <h1 class="text-center text-danger">Blood Details</h1>
                 <asp:GridView runat="server" class="table table-hover" ID="BloodGV" AutoGenerateSelectButton="True" OnSelectedIndexChanged="BloodGV_SelectedIndexChanged">
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
