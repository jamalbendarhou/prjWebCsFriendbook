<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lireMessage.aspx.cs" Inherits="prjWebCsFriendbook.lireMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            width: 600px;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
        }

        hr {
            width: 100%;
        }

        table {
            width: 100%;
        }

        table td {
            padding: 10px;
        }

        a {
            text-decoration: none;
            color: #ff3366;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
             <h1>FRIEND BOOK - BOITE DE RECEPTION</h1>
            <hr />
            <table>
                <tr>
                    <td>Titre:</td>
                    <td>
                        <asp:Label ID="lblTitre" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>

                 <tr>
                    <td>Provenance:</td>
                    <td>
                        <asp:Label ID="lblEnvoyeur" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>

                   <tr>
                    <td>Date:</td>
                    <td>
                        <asp:Label ID="lblDate" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>

                   <tr>
                    <td>Message:</td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Height="80px" Width="400px"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <a href="choix.aspx">Retour à la liste de sélection</a>
        </div>
    </form>
</body>
</html>

