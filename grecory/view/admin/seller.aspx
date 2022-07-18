<%@ Page Title="" Language="C#" MasterPageFile="~/view/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="seller.aspx.cs" Inherits="grecory.view.admin.seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h1 class="text-danger">Patient Information</h1>
             
                <div class="mb-3">
                    <label for="pName" class="form-label">Patient Name</label>
                    <input type="text" class="form-control" id="pName" runat="server">
                </div>
                <div class="mb-3">
                    <label for="pEmail" class="form-label">Patient Email</label>
                    <input type="text" class="form-control" id="pEmail" runat="server">
                </div>
                <div class="mb-3">
                    <label for="pword" class="form-label">Patient password</label>
                    <input type="text" class="form-control" id="pword" runat="server">
                </div>
                <div class="mb-3">
                    <label for="pBloodgroup" class="form-label">Patient Blood Group</label>
                    <input type="text" class="form-control" id="pBloodgroup" runat="server">
                </div>
                <div class="mb-3">
                    <label for="pPhone" class="form-label">Patient Phone</label>
                    <input type="text" class="form-control" id="pPhone" runat="server">
                </div>
                <div class="mb-3">
                    <label for="pAge" class="form-label">Patient Age</label>
                    <input type="text" class="form-control" id="pAge" runat="server">
                </div>
                <div class="mb-3">
                    <label for="pRDate" class="form-label">Receive Date</label>
                    <input type="date" class="form-control" id="pRDate" runat="server">
                </div>
                <label id="ErrMsg" runat="server" class="text-danger"></label><br />
                <asp:Button Text="Edit" class="btn btn-danger" runat="server" ID="EditBtn" OnClick="EditBtn_Click" />
                <asp:Button Text="Save" class="btn btn-danger" runat="server" ID="SaveBtn" OnClick="SaveBtn_Click" />
                <asp:Button Text="Delete" class="btn btn-danger" runat="server" ID="DeleteBtn" OnClick="DeleteBtn_Click" />


            </div>
            <div class="col-md-8">
               <h1 class="text-center text-danger">Patient Details</h1>
                <asp:GridView runat="server" class="table table-hover" ID="Patientinfo" AutoGenerateSelectButton="True" OnSelectedIndexChanged="Patientinfo_SelectedIndexChanged1">
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
