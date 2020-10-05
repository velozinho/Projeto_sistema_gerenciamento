<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tela_Principal.aspx.cs" Inherits="Cadastro_Agendamentos.Tela_Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 294px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem Text="Cadastro" Value="Cadastro">
                    <asp:MenuItem NavigateUrl="~/Cadastro_Clientes.aspx" Text="Cadastrar Cliente" Value="Cadastrar Cliente"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Cadastro_Produto.aspx" Text="Cadastrar Produto" Value="Cadastrar Produto"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Cadastro_Grupo.aspx" Text="Cadastrar Grupo" Value="Cadastrar Grupo"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Cadastro_Vendedor.aspx" Text="Cadastar vendedor" Value="Cadastar vendedor"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Buscar" Value="Buscar">
                    <asp:MenuItem Text="Buscar Cliente" Value="Buscar Cliente" NavigateUrl="~/Buscar_cliente.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Buscar Produto" Value="Buscar Produto" NavigateUrl="~/Buscar_Produto.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Busca_Vendedor.aspx" Text="Buscar Vendedor" Value="Buscar Vendedor"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Vendas" Value="Vendas">
                    <asp:MenuItem Text="PDV" Value="PDV"></asp:MenuItem>
                    <asp:MenuItem Text="Relatórios" Value="Relatórios"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Produtos com Estoque Minimo:<br />
        <br />
        <asp:DataGrid ID="DataGrid_produto" runat="server" CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" Width="520px">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <EditItemStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataGrid>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
