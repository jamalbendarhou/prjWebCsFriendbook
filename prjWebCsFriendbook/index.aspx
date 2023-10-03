<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="prjWebCsFriendbook.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            flex-direction: column; 
            min-height: 100vh;
            background-color: rgba(255, 255, 255, 0.8);
        }

        .right-side {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center; 
            justify-content: center;
            background-image: url('images/bgindex2.jpg'), url('images/bgindex1.jpg');
            background-size: 50% 100%, 50% 100%;
            background-repeat: no-repeat;
            background-position: left center, right center;
            position: relative; 
        }

        h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: white;
            z-index: 1;
        }

        .btn-container {
            position: absolute;
            top: 50%;
            right: 10%; 
            transform: translateY(-50%);
            z-index: 1;
        }

        .btn {
            padding: 10px 20px;
            font-size: 18px;
            text-align: center;
            text-decoration: none;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 150px; 
        }

        .btn-inscrire {
            background-color: #ff3366;
        }

        .btn-connexion {
            background-color: #3399ff;
        }

        header {
            position: absolute; 
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #ff3366;
            color: white;
            text-align: center;
            padding: 10px 20px;
            font-size: 24px;
            border-radius: 5px;
            width: 100%; 
        }

        footer {
            background-color: #ff3366;
            color: white;
            text-align: center;
            padding: 10px 0;
            z-index: 1; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="right-side">
                <header>FRIEND BOOK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bienvenue sur notre site de rencontre</header> 
                <div class="btn-container">
                    <asp:Button ID="btnInscrire" runat="server" Text="S'inscrire" CssClass="btn btn-inscrire" OnClick="btnInscrire_Click" />
                    <asp:Button ID="btnConnexion" runat="server" Text="Se connecter" CssClass="btn btn-connexion" onclick="btnConnexion_Click" />
                </div>
                
               </div>
        </div>
        <footer>
            <p>© 2023 Votre Nom. Tous droits réservés.</p>
        </footer>
    </form>
</body>
</html>
