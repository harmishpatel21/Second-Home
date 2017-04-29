<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" >
        <div>
&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Ahmedabad"></asp:Label>
        </div>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Places"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <div>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="Places" runat="server" ValidationGroup="search">
                <asp:ListItem>Navarangpura</asp:ListItem>
                <asp:ListItem>Sola</asp:ListItem>
                <asp:ListItem>Ranip</asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Button ID="Search" runat="server" Font-Bold="True" Font-Size="X-Large" OnClick="Button1_Click1" Text="Search Hostels" ValidationGroup="search" />
        <br />
        <br />
        <asp:GridView ID="ShowData" runat="server"></asp:GridView>
    </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

