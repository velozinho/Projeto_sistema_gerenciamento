using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cadastro_Agendamentos
{
    public partial class Tela_Principal : System.Web.UI.Page
    {
        Database_CadastroEntities4 context = new Database_CadastroEntities4();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadTable_Estoque_Minimo();
        }
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
        protected void LoadTable_Estoque_Minimo()
        {
            int qtd_minimo = 5;           
           
            // Buscando todos os produtos
            List<TB_PRODUTO> produtos = context.TB_PRODUTO.ToList<TB_PRODUTO>();

            // pegando so com estoque minimo
            IEnumerable<TB_PRODUTO> produtos_minimo = produtos.Where(s => s.qtd_produto == qtd_minimo);

            DataGrid_produto.AutoGenerateColumns = true;
            DataGrid_produto.DataSource = produtos_minimo;           
            DataGrid_produto.DataBind();
        }
    }
}