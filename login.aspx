<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <form id="form1" >
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="User name"></asp:Label>
        <br />
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="password" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="lgn" runat="server" Font-Bold="True" Font-Size="X-Large"  Text="Login" OnClick="lgn_Click" />
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>