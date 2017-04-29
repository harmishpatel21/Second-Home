<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" >
        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Student ID"></asp:Label>
        <br />
        <asp:TextBox ID="sid" runat="server" ></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="User name"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="email" runat="server" ></asp:TextBox>
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" Text="password"></asp:Label>
        <br />
        <asp:TextBox ID="passwd" runat="server" ></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Confirm password"></asp:Label>
        <br />
        <asp:TextBox ID="cnfpasswd" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Date of Birth"></asp:Label>
        <br />
        <asp:TextBox ID="dob" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" Text="College/School"></asp:Label>
        <br />
        <asp:TextBox ID="college" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Contact_no"></asp:Label>
        <br />
        <asp:TextBox ID="contact_no" runat="server"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Parents contact no"></asp:Label>
        <br />
        <asp:TextBox ID="parentsno" runat="server"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Hostel"></asp:Label>
        <br />
        <asp:DropDownList ID="hostel" runat="server" Font-Bold="True" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="h_name" DataValueField="h_id" OnSelectedIndexChanged="hostel_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <asp:DropDownList ID="room" runat="server" Font-Bold="True" Font-Size="X-Large" DataSourceID="SqlDataSource2" DataTextField="h_name" DataValueField="h_id" OnSelectedIndexChanged="hostel_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [r_id] FROM [room]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [h_id], [h_name] FROM [hostel]"></asp:SqlDataSource>
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Joining Date"></asp:Label>
        <br />
        <asp:TextBox ID="joindate" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="register" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Register" OnClick="register_Click" />
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

