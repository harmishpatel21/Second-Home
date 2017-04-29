<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <form id="form1"  bb>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/images/images1.jpg" Width="300px" />
&nbsp;
            <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl="~/images/images2.jpg" Width="300px" />
&nbsp;
            <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl="~/images/images3.jpg" Width="300px" />
        </p>
        <p>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="200px" ImageUrl="~/images/images4.jpg" Width="300px" />
&nbsp;
            <asp:Image ID="Image5" runat="server" Height="200px" ImageUrl="~/images/images5.jpg" Width="300px" />
&nbsp;
            <asp:Image ID="Image6" runat="server" Height="200px" ImageUrl="~/images/images6.jpg" Width="300px" />
        </p>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

