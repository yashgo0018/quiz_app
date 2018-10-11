<%@ page title="" language="C#" masterpagefile="~/admin/admin.master" autoeventwireup="true" inherits="admin_staff, App_Web_t5woxsjf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="heading">Staff</h1>
    <h2 class="sub-heading">Add Staff Member</h2>
    <span class="text">Name</span><asp:TextBox ID="Name" CssClass="TxtInput" runat="server"></asp:TextBox><br />
    <span class="text">Email</span><asp:TextBox ID="Email" CssClass="TxtInput" runat="server"></asp:TextBox><br />
    <span class="text">Username</span><asp:TextBox style="text-transform: none;" ID="Username" CssClass="TxtInput" runat="server"></asp:TextBox><br />
    <span class="text">Password</span><asp:TextBox style="text-transform: none;" 
        ID="Password" CssClass="TxtInput" runat="server" TextMode="Password"></asp:TextBox><br />
    <asp:Button ID="AddUserButton" runat="server" Text="Add Staff Member" 
        CssClass="btn" onclick="AddUserButton_Click" /><br />
    <br />
    <br />
    <asp:GridView ID="gridview1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="6" CellSpacing="5" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" Width="394px" AllowPaging="True" DataKeyNames="id">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" 
                SortExpression="id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="name" 
                SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:quiz_appConnectionString %>" 
        DeleteCommand="DELETE FROM [staff] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [staff] ([name], [email], [username], [password]) VALUES (@name, @email, @username, @password)" 
        SelectCommand="SELECT * FROM [staff]" 
        
        UpdateCommand="UPDATE [staff] SET [name] = @name, [email] = @email, [username] = @username, [password] = @password WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>