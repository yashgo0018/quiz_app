<%@ page language="C#" autoeventwireup="true" inherits="admin_login, App_Web_tjg4qwvn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
    <style>
        html
        {
            height:100%;
        }
        
        *{
            padding: 0;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif; 
        }
        
        body
        {
            height:100%;
            overflow: hidden;
        }
        
        header
        {
            height: 10vh;
            top: 0;
            padding: 1vh;
        }
        
        header h1{
            float: left;
            margin-top: 10px;
        }

        header h2{
            float: right;
        }
        
        .submit_button{
            color: black;
            background-color: transparent;
            border: 2px solid black;
            padding: 5px;
            margin-top: 20px;
            margin-bottom: 20px;
            text-transform: uppercase;
            border-radius: 10px;
            font-size: 15px; 
        }

        .submit_button:hover{
            color: white;
            background-color: black;
            border: 2px solid transparent;
        }

        .container
        {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        
        .error
        {
            background-color: Yellow;
            color: Red;
            font-size: 15px;
            font-weight: 100;
            text-transform: uppercase;
        }
        
        .form
        {
            width: 400px;
            height: auto;
            font-weight: 200;
            font-size: 20px;
            border: 2px solid black;
        }

        .header
        {
            background-color: black;
            color: White;
            font-size: 30px;
            padding: 5px 0;
        }
        
        input[type="text"], input[type="password"]
        {
            border: none;
            border-bottom: 2px solid black;
            font-size: 20px;
            margin: 5px;
            padding: 5px;
            font-weight: 200;
        }
        
        input[type="text"]:focus, input[type="password"]:focus
        {
            border-bottom: 2px solid red;
        }
        
        .container h4{
            font-size: 30px;
        }

        main{
            padding: 20px;
            height:100%;
        }

        footer{
            color: white;
            background-color: black;
            height: 10vh;
            line-height: 10vh;
            vertical-align: middle;
            text-align: center;
            position: absolute;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <form style="height:100%;" id="form1" runat="server">
    <div style="height:100%;">
        <header>
            <h1>Prelude Public School</h1>
            <h2>Computer Practical</h2>
        </header><hr>
        <main>
            <section class="container">
                <section class="form">
                    <div class="header">Administrator Login</div>
                    <center>
                    <table>
                        <tr>
                            <td>Username</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label runat="server" ID="error_message" CssClass="error"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="submit_button" onclick="Button1_Click"></asp:Button>
                            </td>
                        </tr>
                    </table>
                    </center>
                </section>
            </section>
        </main>
        <footer>
            Prelude Public School 2018&copy; All Rights Reserved.
        </footer>
    </div>
    </form>
</body>
</html>