using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Cadastro_Agendamentos
{
    
    public partial class Buscar_Produto : System.Web.UI.Page
    {
        Database_CadastroEntities4 context = new Database_CadastroEntities4();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            string codigo = Text_codigo.Text;

            TB_PRODUTO produto = context.TB_PRODUTO.First(c => c.codigo == codigo);

            Text_grupo.Text      = produto.grupo;
            Text_custo.Text      = produto.custo.ToString();
            Text_descricao.Text  = produto.descricao;
            Text_valorFinal.Text = produto.valor_final.ToString();
            Text_qtd.Text        = produto.qtd_produto.ToString();

            Bloquear_text();

        }

        protected void Btn_salvar_Click(object sender, ImageClickEventArgs e)
        {
            string codigo = Text_codigo.Text;

            TB_PRODUTO produto = context.TB_PRODUTO.First(c => c.codigo == codigo);

            produto.grupo       = Text_grupo.Text;
            produto.custo       = (float)Convert.ToInt64(Text_custo.Text);
            produto.valor_final = (float)Convert.ToInt64(Text_valorFinal.Text);
            produto.qtd_produto = (int)Convert.ToInt64(Text_qtd.Text);

            MessageBox.Show("Produto  Alterado Com Sucesso!!!");
            // COMMIT
            context.SaveChanges();
            // voltando para pegina Principal
            PaginaInicial();
        }

        protected void Bloquear_text()
        {
            Text_descricao.Enabled  = false;
            Text_grupo.Enabled      = false;
            Text_custo.Enabled      = false;
            Text_valorFinal.Enabled = false;
            Text_qtd.Enabled        = false;
            
        }
        protected void DesBloquear_text()
        {
            Text_codigo.Enabled     = false;
            Text_descricao.Enabled  = true;
            Text_grupo.Enabled      = true;
            Text_custo.Enabled      = true;
            Text_valorFinal.Enabled = true;
            Text_qtd.Enabled        = true;

        }

        protected void PaginaInicial()
        {
            Response.Redirect("Tela_Principal.aspx");
        }

        protected void btn_alterar_Click(object sender, ImageClickEventArgs e)
        {
            DesBloquear_text();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            PaginaInicial();
        }

        protected void btn_excluir_Click(object sender, ImageClickEventArgs e)
        {
            string codigo = Text_codigo.Text;

            TB_PRODUTO produto = context.TB_PRODUTO.First(c => c.codigo == codigo);

            context.TB_PRODUTO.Remove(produto);

            MessageBox.Show("Produto  Excluido Com Sucesso!!!");
            // COMMIT
            context.SaveChanges();
            // voltando para pegina Principal
            PaginaInicial();
        }
    }
}