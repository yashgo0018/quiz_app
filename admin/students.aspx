<%@ page title="Students" language="C#" masterpagefile="~/admin/admin.master" autoeventwireup="true" inherits="admin_students, App_Web_t5woxsjf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 class="heading">Students</h1>
<h2 class="sub-heading">Add Student</h2>
<span class="text">Name</span><asp:TextBox ID="Name" CssClass="TxtInput" runat="server"></asp:TextBox><br />
<span class="text">Class</span><asp:TextBox ID="Class" CssClass="TxtInput" runat="server"></asp:TextBox><br />
<span class="text">Password</span><asp:TextBox ID="Password" CssClass="TxtInput" runat="server" TextMode="Password"></asp:TextBox><br />
<asp:Button ID="AddUserButton" runat="server" Text="Add Student" 
        CssClass="btn" onclick="AddUserButton_Click" /><br />
    <br />
    <br />
    <asp:GridView ID="gridview1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="6" CellSpacing="5" 
        DataKeyNames="roll_no" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" Width="394px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="roll_no" HeaderText="roll_no" InsertVisible="False" 
                ReadOnly="True" SortExpression="roll_no" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="total_marks" HeaderText="total_marks" 
                SortExpression="total_marks" />
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
        DeleteCommand="DELETE FROM [students] WHERE [roll_no] = @roll_no" 
        InsertCommand="INSERT INTO [students] ([name], [class], [password], [total_marks]) VALUES (@name, @class, @password, @total_marks)" 
        SelectCommand="SELECT * FROM [students]" 
        UpdateCommand="UPDATE [students] SET [name] = @name, [class] = @class, [password] = @password, [total_marks] = @total_marks WHERE [roll_no] = @roll_no">
        <DeleteParameters>
            <asp:Parameter Name="roll_no" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="class" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="total_marks" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="class" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="total_marks" Type="Int32" />
            <asp:Parameter Name="roll_no" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>

