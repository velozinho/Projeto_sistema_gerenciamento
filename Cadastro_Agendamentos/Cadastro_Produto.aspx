<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_Produto.aspx.cs" Inherits="Cadastro_Agendamentos.Cadastro_Produto" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 36px;
        }
        .auto-style2 {
            margin-left: 18px;
        }
        .auto-style3 {
            margin-left: 40px;
        }
        .auto-style4 {
            margin-left: 29px;
        }
        .auto-style5 {
            margin-left: 21px;
        }
        .auto-style6 {
            margin-left: 34px;
        }
        .auto-style7 {
            margin-left: 55px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CADASTRO DE PRODUTO<br />
            <br />
            <br />
            Código :<asp:TextBox ID="Text_codigo" runat="server" CssClass="auto-style1" Width="194px"></asp:TextBox>
            <br />
            <br />
            Descrição :
            <asp:TextBox ID="Text_descricao" runat="server" CssClass="auto-style2" Width="190px"></asp:TextBox>
            <br />
            <br />
            Grupo :             
            <asp:TextBox ID="Text_grupo" runat="server" CssClass="auto-style3" Width="190px"></asp:TextBox>
            <br />
            <br />
            Custo :
            <asp:TextBox ID="Text_custo" runat="server" CssClass="auto-style3" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Valor de Venda :<asp:TextBox ID="Text_valorFinal" runat="server" CssClass="auto-style4" Width="139px"></asp:TextBox>
            <br />
            <br />
            Quantidade :
            <asp:TextBox ID="Text_qtd" runat="server" CssClass="auto-style5"></asp:TextBox>
            <br />
            <br />
            Foto do Produto :<asp:FileUpload ID="File_imagem" runat="server" CssClass="auto-style7" Width="267px" />
            <br />
            <br />
            <asp:ImageButton ID="btn_salvar" runat="server" ImageUrl="~/Imagem/btnsalvar.PNG" OnClick="btn_salvar_Click" Width="51px" />
            <asp:ImageButton ID="btn_voltar" runat="server" CssClass="auto-style6" ImageUrl="~/Imagem/btn_voltar.PNG" OnClick="btn_voltar_Click" Width="43px" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
