<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="connexion.aspx.cs" Inherits="prjWebCsFriendbook.connexion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Connexion</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            min-height: 100vh;
            background-color: rgba(255, 255, 255, 0.8);
        }

        .left-side {
            flex: 1;
            background-image: url('images/bgconnexion.jpg'); 
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        .right-side {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #ff3366; 
        }

        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }


        table {
            width: 100%;
        }


        table tr td {
            padding: 10px;
        }

        label {
            font-weight: bold;
        }


        .btn-container {
            display: flex;
            justify-content: center;
        }

        .btn {
            padding: 10px 20px;
            font-size: 18px;
            text-align: center;
            text-decoration: none;
            color: #fff;
            background-color: #ff3366; 
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="left-side"></div>
            <div class="right-side">
                <h1>Connexion</h1>
                <div class="form-container">
                    <table>
                        <tr>
                            <td><asp:Label ID="Label1" runat="server" Text="Nom :"></asp:Label></td>
                            <td><asp:TextBox ID="txtNom" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label2" runat="server" Text="Mot de passe :"></asp:Label></td>
                            <td><asp:TextBox ID="txtMot2passe" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr style="text-align:center">
                            <td colspan="2">
                                <asp:Button ID="btnConnexion" runat="server" Text="Se connecter" CssClass="btn" OnClick="btnConnexion_Click" />
                            </td>
                        </tr>
                        <tr style="text-align:center">
                            <td colspan="2">
                                <asp:Label ID="lblErreur" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>

    </form>
</body>
</html>

