<%@ page language="C#" autoeventwireup="true" inherits="Home, App_Web_hxd3xge2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Computer Practical</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif; 
        }
        header{
            height: 10vh;
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
            color: purple;
            background-color: transparent;
            border: 2px solid purple;
            padding: 5px;
            margin-top: 20px;
            text-transform: uppercase;
            border-radius: 10px;
            font-size: 20px;
            float: right; 
        }

        .submit_button:hover{
            color: white;
            background-color: purple;
            border: 2px solid transparent;
        }

        .container{
            border: 2px solid antiquewhite;
            border-radius: 30px;
            padding: 20px;
        }

        .container h4{
            font-size: 30px;
        }

        main{
            padding: 20px;
        }
        
        .container input, hr{
            margin-bottom: 20px;
        }

        .container .solutions{
            font-size: 20px;
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
    <form id="form1" runat="server">
    <div>
        <header style="text-transform: capitalize;">
            <h1><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h1>
            <h2><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <br> Done:- <asp:Label ID="done" runat="server" Text="Label"></asp:Label>/<asp:Label ID="Total" runat="server" Text="Label"></asp:Label></h2>
        </header><hr>
        <main>
            <section class="container">
                <h4><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h4>
                <hr>
                <div class="solutions">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="question" /><br />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="question" /><br />
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="question" /><br />
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="question" /><br />
                </div>

            </section>
            <section class="submit">
                <asp:Button ID="Button1" runat="server" Text="submit" 
            CssClass="submit_button" onclick="Button1_Click"></asp:Button>
            </section>
        </main>
        <footer>
            Prelude Public School 2018&copy; All Rights Reserved.
        </footer>
    </div>
    </form>
</body>
</html>
