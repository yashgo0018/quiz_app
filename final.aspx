<%@ page language="C#" autoeventwireup="true" inherits="final, App_Web_hxd3xge2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Result</title>
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
        
        .form input[type="text"]
        {
            border: none;
            border-bottom: 2px solid black;
            font-size: 20px;
            margin: 15px;
            padding: 5px;
            font-weight: 200;
        }
        
        .form input[type="text"]:focus
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
        <header style="text-transform: capitalize;">
            <h1><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h1>
            <h2><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h2>
        </header><hr>
        <main>
            <section class="container">
                <section class="form">
                    <div class="header">Result</div>
                    <center>
                    <table>
                        <tr>
                            <td>Max Marks</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Marks Scored </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
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