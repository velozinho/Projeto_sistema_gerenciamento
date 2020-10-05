<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Busca_Vendedor.aspx.cs" Inherits="Cadastro_Agendamentos.Busca_Vendedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 30px;
        }
        .auto-style2 {
            margin-left: 189px;
        }
        .auto-style3 {
            margin-left: 22px;
        }
        .auto-style4 {
            margin-left: 93px;
        }
        .auto-style14 {
            margin-left: 56px;
        }
        .auto-style13 {
            margin-left: 42px;
        }
        .auto-style12 {
            margin-left: 41px;
            margin-top: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Busca Vendedor<br />
            <br />
            CPF :
            <asp:TextBox ID="Text_CPF" runat="server" CssClass="auto-style1" Width="154px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_buscar" runat="server" CssClass="auto-style2" OnClick="btn_buscar_Click" Text="Pesquisar" />
            <br />
            <br />
            <br />
            Nome Completo : <asp:TextBox ID="Text_nome" runat="server" CssClass="auto-style3" Width="187px"></asp:TextBox>
            <br />
            <br />
            Email :
            <asp:TextBox ID="Text_email" runat="server" CssClass="auto-style4" Width="184px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:ImageButton ID="Btn_salvar" runat="server" ImageUrl="~/Imagem/btnsalvar.PNG" OnClick="Btn_salvar_Click" Width="65px" />
            <asp:ImageButton ID="btn_excluir" runat="server" CssClass="auto-style14" ImageUrl="~/Imagem/excluir.PNG" OnClick="btn_excluir_Click" Width="64px" />
            <asp:ImageButton ID="btn_alterar" runat="server" CssClass="auto-style13" ImageUrl="~/Imagem/alterar.PNG" OnClick="btn_alterar_Click" Width="57px" />
            <asp:ImageButton ID="btn_voltar" runat="server" CssClass="auto-style12" ImageUrl="~/Imagem/btn_voltar.PNG" OnClick="ImageButton1_Click" Width="68px" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
