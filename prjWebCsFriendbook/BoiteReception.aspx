<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BoiteReception.aspx.cs" Inherits="prjWebCsFriendbook.BoiteReception" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Boite de Réception</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        h1 {
            text-align: center;
            color: #ff3366;
        }

        hr {
            width: 80%;
            margin: 20px auto;
            border-color: #ff3366;
        }

        .container {
            text-align: center;
            margin: 20px auto;
            max-width: 1000px;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .message-table {
            width: 100%;
            border-collapse: collapse;
        }

        .message-table th {
            background-color: #ff3366;
            color: white;
            text-align: left;
        }

        .message-table th,
        .message-table td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        .message-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .message-table tr:nth-child(odd) {
            background-color: #fff;
        }

        .btn-nouveau {
            background-color: #3399ff;
            color: white;
            border: none;
            padding: 10px 20px;
            font-weight: bold;
            text-transform: uppercase;
            cursor: pointer;
        }

        .btn-nouveau:hover {
            background-color: #0066cc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>FRIEND BOOK - BOITE DE RECEPTION</h1>
            <hr />
            <asp:Label ID="lblWelcome" runat="server" Text="" Font-Bold="True"></asp:Label>
            
            <asp:Table ID="tabMessages" runat="server" CssClass="message-table">
                <asp:TableRow runat="server">
                    <asp:TableCell Text="Titres" />
                    <asp:TableCell Text="Provenances" />
                    <asp:TableCell Text="Actions" />
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
