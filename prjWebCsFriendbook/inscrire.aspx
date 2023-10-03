<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscrire.aspx.cs" Inherits="prjWebCsFriendbook.inscrire" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inscription</title>
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
            background-image: url('images/bginscription.jpg');
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

        
        form {
            display: flex;
            flex-direction: column;
            gap: 10px;
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
                <h1>Inscription</h1>
                <div class="form-container">


                    <table>
                        <tr>
                            <td><asp:Label ID="LabelNom" runat="server" Text="Nom :"></asp:Label></td>
                            <td><asp:TextBox ID="txtNom" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="LabelMotDePasse" runat="server" Text="Mot de passe :"></asp:Label></td>
                            <td><asp:TextBox ID="txtMotDePasse" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="LabelSexe" runat="server" Text="Sexe :"></asp:Label></td>
                            <td>
                                <asp:DropDownList ID="cboSexe" runat="server">
                                        <asp:ListItem Text="Sélectionnez le sexe" Value=""></asp:ListItem>
                                        <asp:ListItem Text="Homme" Value="Homme"></asp:ListItem>
                                        <asp:ListItem Text="Femme" Value="Femme"></asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="LabelNaissance" runat="server" Text="Date de naissance :"></asp:Label></td>
                            <td><asp:TextBox ID="txtNaissance" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="LabelRaison" runat="server" Text="Raison :"></asp:Label></td>
                            
                                <td>
                                    <asp:DropDownList ID="cboRaison" runat="server">
                                        <asp:ListItem Text="Sélectionnez une raison" Value=""></asp:ListItem>
                                        <asp:ListItem Text="Amour" Value="Amour"></asp:ListItem>
                                        <asp:ListItem Text="Amitié" Value="Amitié"></asp:ListItem>
                                        <asp:ListItem Text="Autre" Value="Autre"></asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="LabelEthnie" runat="server" Text="Ethnie :"></asp:Label></td>
                            <td><asp:DropDownList ID="cboEthnie" runat="server">
                                <asp:ListItem Text="Sélectionnez un groupe ethnique" Value=""></asp:ListItem>
                                        <asp:ListItem Text="quebecois" Value="quebecois"></asp:ListItem>
                                        <asp:ListItem Text="italien" Value="italien"></asp:ListItem>
                                        <asp:ListItem Text="chinoi" Value="chinoi"></asp:ListItem>
                                        <asp:ListItem Text="haitien" Value="haitien"></asp:ListItem>
                                        <asp:ListItem Text="maghrebin" Value="maghrebin"></asp:ListItem>
                                        <asp:ListItem Text="Autre" Value="Autre"></asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="text-align:center">
                            <td colspan="2">
                                <asp:Button ID="btnInscription" runat="server" Text="S'inscrire" CssClass="btn" OnClick="btnInscription_Click"  />
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
