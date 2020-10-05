using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Cadastro_Agendamentos
{
    public partial class Cadastro_vendas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tela_Principal.aspx");
        }

        protected void btn_salvar_Click(object sender, EventArgs e)
        {
            string idItem = Request.QueryString["codigo"];
            Database_CadastroEntities4 context = new Database_CadastroEntities4();

         // double valor_final = desconto(context);



            TB_VENDA venda = new TB_VENDA()
            {
                codigo_cli      = (int)Convert.ToInt64(txt_cod_cliente.Text),
                desconto        = (int)Convert.ToInt64(txt_valor.Text),
                codigo_produto  = txt_cod_produto.Text,
                qtd_produto     = (int)Convert.ToInt64(txt_qualidade_produto.Text),

                // falta restantes dos campos da venda e testar tudo
               
            };


            if (String.IsNullOrEmpty(idItem))
            {
                // Adcionando Registro
                context.TB_VENDA.Add(venda);
                // Mensagem de Sucesso
                MessageBox.Show("Venda Inserido Com Sucesso!");
                // COMMIT
                context.SaveChanges();
                // voltando para pegina Principal
                Response.Redirect("Principal.aspx");
            }
        }

        protected double desconto(Database_CadastroEntities4 context)
        {
            string codigo = txt_cod_produto.Text;
            
            TB_PRODUTO prod = context.TB_PRODUTO.First(c => c.codigo == codigo);

            double valor = prod.valor_final;
            double percentual = (double)Convert.ToInt64(txt_valor.Text);
            double valor_final = valor - (percentual * valor);

            return valor_final;

        }
    }
}