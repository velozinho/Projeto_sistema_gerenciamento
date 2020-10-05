<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_Vendedor.aspx.cs" Inherits="Cadastro_Agendamentos.Cadastro_Vendedor" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro de Vendedor</title>
    <style type="text/css">
        .auto-style1 {
            width: 252px;
        }
        .auto-style2 {
            width: 151px;
        }
        .auto-style4 {
            width: 104px;
        }
        .auto-style5 {
            width: 475px;
        }
        .auto-style6 {
            width: 78px;
        }
        .auto-style7 {
            margin-left: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="lbl_title" runat="server" Text="Cadastro de Vendedor"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                        <asp:Label ID="lbl_nome" runat="server" Text="Nome Completo:"></asp:Label>
                </td>
                <td>
                        <asp:TextBox ID="txt_nome" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl_cpf" runat="server" Text="CPF:"></asp:Label>
                </td>


                <td>
                    <asp:TextBox ID="txt_cpf" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl_email" runat="server" Text="E-mail"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <table style="width:100%;">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:ImageButton ID="btn_salvar_ima" runat="server" ImageUrl="~/Imagem/btnsalvar.PNG" OnClick="btn_salvar_ima_Click" Width="45px" />
                <asp:ImageButton ID="btn_voltar_ima" runat="server" CssClass="auto-style7" ImageUrl="~/Imagem/btn_voltar.PNG" OnClick="btn_voltar_ima_Click" Width="51px" />
            </td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
