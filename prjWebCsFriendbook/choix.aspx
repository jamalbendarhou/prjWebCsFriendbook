<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="choix.aspx.cs" Inherits="prjWebCsFriendbook.choix" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Rechercher des membres</title>
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
            background-image: url('images/bgchoix.jpg'); 
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
                <asp:Button ID="btnLireMessage" runat="server" Text="Messagerie" CssClass="btn" onclick="btnLireMessage_Click" />
                    <br />
                <h1>Rechercher des membres</h1>
                <div class="form-container">
                    
                    <table>
                        <tr>
                            <td><asp:Label ID="LabelSexe" runat="server" Text="Sexe :"></asp:Label></td>
                            <td>
                                <asp:DropDownList ID="cboSexe" runat="server">
                                    <asp:ListItem Text="Sélectionnez un sexe" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Homme" Value="Homme"></asp:ListItem>
                                    <asp:ListItem Text="Femme" Value="Femme"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="LabelAge" runat="server" Text="Catégorie d'âge :"></asp:Label></td>
                            <td>
                                <asp:DropDownList ID="cboAge" runat="server">
                                    <asp:ListItem Text="Sélectionnez une catégorie d'âge" Value=""></asp:ListItem>
                                    <asp:ListItem Text="18-25 ans" Value="18-25 ans"></asp:ListItem>
                                    <asp:ListItem Text="26-35 ans" Value="26-35 ans"></asp:ListItem>
                                    <asp:ListItem Text="36-50 ans" Value="36-50 ans"></asp:ListItem>
                                    <asp:ListItem Text="Plus de 50 ans" Value="Plus de 50 ans"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="LabelEthnie" runat="server" Text="Groupe ethnique :"></asp:Label></td>
                            <td>
                                <asp:DropDownList ID="cboEthnie" runat="server">
                                    <asp:ListItem Text="Sélectionnez un groupe ethnique" Value=""></asp:ListItem>
                                    <asp:ListItem Text="quebecois" Value="quebecois"></asp:ListItem>
                                    <asp:ListItem Text="italien" Value="italien"></asp:ListItem>
                                    <asp:ListItem Text="chinoi" Value="chinoi"></asp:ListItem>
                                    <asp:ListItem Text="haitien" Value="haitien"></asp:ListItem>
                                    <asp:ListItem Text="maghrebin" Value="maghrebin"></asp:ListItem>
                                    <asp:ListItem Text="autre" Value="autre"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="LabelRaison" runat="server" Text="Raison :"></asp:Label></td>
                            <td>
                                <asp:DropDownList ID="cboRaison" runat="server">
                                    <asp:ListItem Text="Sélectionnez une raison" Value=""></asp:ListItem>
                                    <asp:ListItem Text="amour" Value="amour"></asp:ListItem>
                                    <asp:ListItem Text="amitie" Value="amitie"></asp:ListItem>
                                    <asp:ListItem Text="autre" Value="autre"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="text-align:center">
                            <td colspan="2">
                                <asp:Button ID="btnRechercher" runat="server" Text="Rechercher" CssClass="btn" onclick="btnRechercher_Click" />
                            </td>
                        </tr>
                    </table>
                             

                               <asp:Panel ID="panResultat" runat="server" Visible="false">
                                   <asp:Table ID="tabRecherche" runat="server" GridLines="Both">

                                   </asp:Table>
                                </asp:Panel>

                    
                            <asp:Panel ID="panMessage" runat="server" Visible="false">
                                    <table>
                <tr>
                    <td>Destinataire :</td>
                    <td>
                        <asp:DropDownList ID="cboDestinataires" runat="server" Width="400px" Font-Bold="True"></asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>Titre :</td>
                    <td>
                        <asp:TextBox ID="txtTitre" runat="server" Width="400px" Font-Bold="True"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td style="vertical-align: top;">Message :</td>
                    <td>
                        <asp:TextBox ID="txtMessage" runat="server" Font-Bold="True" Height="150px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                    </td>
                </tr>

                <tr class="center-text">
                    <td>
                        <asp:Button ID="btnEnvoyer" runat="server" Text="Envoyer" Font-Bold="True" Width="100px" OnClick="btnEnvoyer_Click"/>
                    </td>
                    <td>
                        <asp:Button ID="btnEffacer" runat="server" Text="Recommencer" Font-Bold="True" Width="150px" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblErreur" runat="server" Font-Bold="True" CssClass="error-message" Width="100%"></asp:Label>
                    </td>
                </tr>
            </table>
                                </asp:Panel>

                </div>
            </div>
        </div>

    </form>
</body>
</html>

