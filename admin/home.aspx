<%@ page title="Prelude Public School" language="C#" masterpagefile="~/admin/admin.master" autoeventwireup="true" inherits="admin_home, App_Web_t5woxsjf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="heading">Home Page</h1>
    <h2 class="sub-heading">Reset The App</h2>
    <asp:Button ID="ResetApp" runat="server" CssClass="btn" Text="Reset" 
        onclick="ResetApp_Click" /><br />
    <span class="text">Title</span><asp:TextBox ID="ChangeTitle" CssClass="TxtInput" runat="server"></asp:TextBox><asp:Button ID="GetResultButton" runat="server" Text="Get Result" 
        CssClass="btn" onclick="ChangeTitle_Click" />
    <span class="text">
    <br />
    Side Text</span><asp:TextBox ID="ChangeTagLine" CssClass="TxtInput" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Get Result" 
        CssClass="btn" onclick="ChangeTagLine_Click" />
    
</asp:Content>