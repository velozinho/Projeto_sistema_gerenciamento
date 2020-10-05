<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_vendas.aspx.cs" Inherits="Cadastro_Agendamentos.Cadastro_vendas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro de Vendas</title>
    <style type="text/css">
        .auto-style1 {
            width: 249px;
        }
        .auto-style2 {
            width: 166px;
        }
        .auto-style3 {
            width: 167px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 424px;
        }
        .auto-style7 {
            width: 93px;
        }
        .auto-style8 {
            width: 104px;
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
                        <asp:Label ID="lbl_title" runat="server" Text="Cadastro de Vendas"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl_codigo_produto" runat="server" Text="Código do Produto:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_cod_produto" runat="server" Width="255px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="cod_cliente" runat="server" Text="Código do Cliente:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_cod_cliente" runat="server" Width="255px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl_qtd_prod" runat="server" Text="Quantidade de Produto:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_qualidade_produto" runat="server" Width="254px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbl_data" runat="server" Text="Data:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_data" runat="server" Width="255px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Desconto :</td>
                <td>
                    <asp:TextBox ID="txt_valor" runat="server" Width="255px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="btn_salvar" runat="server" Text="Salvar" style="width: 53px" OnClick="btn_salvar_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" />
                </td>
                <td>
                    <asp:Button ID="btn_voltar" runat="server" CssClass="auto-style5" Text="Voltar" OnClick="btn_voltar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
