<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buscar_Produto.aspx.cs" Inherits="Cadastro_Agendamentos.Buscar_Produto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 23px;
        }
        .auto-style3 {
            margin-left: 219px;
        }
        .auto-style4 {
            margin-left: 29px;
        }
        .auto-style5 {
            margin-left: 21px;
        }
        .auto-style6 {
            margin-left: 45px;
        }
        .auto-style7 {
            margin-left: 47px;
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Busca de Produtos<br />
            <br />
            Código do Produto:<asp:TextBox ID="Text_codigo" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br />
            <asp:Button ID="btn_buscar" runat="server" OnClick="btn_buscar_Click" Text="Pesquisar" CssClass="auto-style3" />
            <br />
            <br />
            <br />
            Descrição :
            <asp:TextBox ID="Text_descricao" runat="server" CssClass="auto-style2" Width="190px"></asp:TextBox>
            <br />
            <br />
            Grupo :             
            <asp:TextBox ID="Text_grupo" runat="server" CssClass="auto-style6" Width="190px"></asp:TextBox>
            <br />
            <br />
            Custo :
            <asp:TextBox ID="Text_custo" runat="server" CssClass="auto-style7" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Valor de Venda :<asp:TextBox ID="Text_valorFinal" runat="server" CssClass="auto-style4" Width="139px"></asp:TextBox>
            <br />
            <br />
            Quantidade :
            <asp:TextBox ID="Text_qtd" runat="server" CssClass="auto-style5"></asp:TextBox>
            <br />
            <br />
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
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
