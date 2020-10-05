<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_Clientes.aspx.cs" Inherits="Cadastro_Agendamentos.Cadastro_Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 35px;
            margin-top: 1px;
        }
        .auto-style2 {
            margin-left: 109px;
        }
        .auto-style3 {
            margin-left: 86px;
        }
        .auto-style5 {
            margin-left: 21px;
        }
        .auto-style6 {
            margin-left: 76px;
        }
        .auto-style7 {
            margin-left: 20px;
        }
        .auto-style8 {
            margin-left: 102px;
        }
        .auto-style9 {
            margin-left: 39px;
        }
        .auto-style10 {
            margin-left: 78px;
            margin-bottom: 0px;
        }
        .auto-style11 {
            margin-left: 26px;
        }
        .auto-style12 {
            margin-left: 58px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tela De Cadastro De Clientes<br />
            <br />
            <br />
            <br />
            Nome Completo :<asp:TextBox ID="Text_nome" runat="server" CssClass="auto-style1" OnTextChanged="TextBox1_TextChanged" Width="242px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-mail<asp:TextBox ID="Text_email" runat="server" AutoCompleteType="Email" CssClass="auto-style11" Width="176px"></asp:TextBox>
            <br />
            <br />
            CPF :<asp:TextBox ID="Text_cpf" runat="server" CssClass="auto-style2" Width="220px" OnTextChanged="Text_cpf_TextChanged"></asp:TextBox>
            <br />
            <br />
            Telefone :<asp:TextBox ID="Text_telefone" runat="server" CssClass="auto-style3" TextMode="Phone" Width="171px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Celular :
            <asp:TextBox ID="Text_celular" runat="server" AutoCompleteType="Cellular" CssClass="auto-style5" Width="161px"></asp:TextBox>
            <br />
            <br />
            <br />
            Endereço:
            <asp:TextBox ID="Text_endereco" runat="server" CssClass="auto-style6" Width="272px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Número:<asp:TextBox ID="Text_end_numero" runat="server" CssClass="auto-style7"></asp:TextBox>
            <br />
            <br />
            <br />
            CEP :<asp:TextBox ID="Text_end_cep" runat="server" AutoCompleteType="HomeCity" CssClass="auto-style8" OnTextChanged="Text_end_cep_TextChanged" Width="190px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Estado:<asp:TextBox ID="Text_end_estado" runat="server" AutoCompleteType="HomeState" CssClass="auto-style9"></asp:TextBox>
            <br />
            <br />
            <br />
            Bairro : <asp:TextBox ID="Text_end_bairro" runat="server" AutoCompleteType="HomeCountryRegion" CssClass="auto-style10" Width="208px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:ImageButton ID="Btn_salvar" runat="server" ImageUrl="~/Imagem/btnsalvar.PNG" OnClick="Btn_salvar_Click" Width="73px" />
            <asp:ImageButton ID="btn_voltar" runat="server" CssClass="auto-style12" ImageUrl="~/Imagem/btn_voltar.PNG" OnClick="ImageButton1_Click" Width="68px" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
