<%@ page title="Add Question" language="C#" masterpagefile="~/admin/admin.master" autoeventwireup="true" inherits="admin_questions, App_Web_t5woxsjf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="heading">Questions</h1>
    <h2 class="sub-heading">Add Questions</h2>
    <span class="text">Question</span><asp:TextBox ID="QuestionInput" style="width: 500px;" CssClass="TxtInput" runat="server"></asp:TextBox><br />
    <asp:RadioButton ID="RadioButton1" runat="server" Text="Correct" GroupName="answer" />
    <asp:TextBox ID="Answer1" runat="server" CssClass="TxtInput"></asp:TextBox><br />
    <asp:RadioButton ID="RadioButton2" runat="server" Text="Correct" GroupName="answer" />
    <asp:TextBox ID="Answer2" runat="server" CssClass="TxtInput"></asp:TextBox><br />
    <asp:RadioButton ID="RadioButton3" runat="server" Text="Correct" GroupName="answer" />
    <asp:TextBox ID="Answer3" runat="server" CssClass="TxtInput"></asp:TextBox><br />
    <asp:RadioButton ID="RadioButton4" runat="server" Text="Correct" GroupName="answer" />
    <asp:TextBox ID="Answer4" runat="server" CssClass="TxtInput"></asp:TextBox><br />
    <asp:Label runat="server" ID="error_message" CssClass="error"></asp:Label>
    <asp:Button ID="AddQuestionButton" runat="server" Text="Add Question" 
        CssClass="btn" onclick="AddQuestionButton_Click" /><br />
    <br />
    <br />

    <h2 class="sub-heading">Questions</h2>
    <asp:GridView runat="server" ID="gridview1" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="20" DataKeyNames="id" 
        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
        Width="950px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="question" HeaderText="question" 
                SortExpression="question" />
            <asp:BoundField DataField="opt1" HeaderText="opt1" SortExpression="opt1" />
            <asp:BoundField DataField="opt2" HeaderText="opt2" SortExpression="opt2" />
            <asp:BoundField DataField="opt3" HeaderText="opt3" SortExpression="opt3" />
            <asp:BoundField DataField="opt4" HeaderText="opt4" SortExpression="opt4" />
            <asp:BoundField DataField="crt_opt" HeaderText="crt_opt" 
                SortExpression="crt_opt" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:quiz_appConnectionString %>" 
        DeleteCommand="DELETE FROM [questions] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [questions] ([question], [opt1], [opt2], [opt3], [opt4], [crt_opt]) VALUES (@question, @opt1, @opt2, @opt3, @opt4, @crt_opt)" 
        SelectCommand="SELECT * FROM [questions]" 
        UpdateCommand="UPDATE [questions] SET [question] = @question, [opt1] = @opt1, [opt2] = @opt2, [opt3] = @opt3, [opt4] = @opt4, [crt_opt] = @crt_opt WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="opt1" Type="String" />
            <asp:Parameter Name="opt2" Type="String" />
            <asp:Parameter Name="opt3" Type="String" />
            <asp:Parameter Name="opt4" Type="String" />
            <asp:Parameter Name="crt_opt" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="opt1" Type="String" />
            <asp:Parameter Name="opt2" Type="String" />
            <asp:Parameter Name="opt3" Type="String" />
            <asp:Parameter Name="opt4" Type="String" />
            <asp:Parameter Name="crt_opt" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

