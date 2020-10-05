using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Cadastro_Agendamentos
{
    public partial class Busca_Vendedor : System.Web.UI.Page
    {
        Database_CadastroEntities4 context = new Database_CadastroEntities4();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            string cpf = Text_CPF.Text;

            TB_VENDEDOR vendedor = context.TB_VENDEDOR.First(c => c.cpf == cpf);

            Text_nome.Text = vendedor.nome;
            Text_email.Text = vendedor.email;

            Bloquear_text();
        }

        protected void PaginaInicial()
        {
            Response.Redirect("Tela_Principal.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            PaginaInicial();
        }

        protected void Desbloquear_text()
        {
            Text_CPF.Enabled   = false;
            Text_nome.Enabled  = true;
            Text_email.Enabled = true;
           
        }

        protected void Bloquear_text()
        {
            Text_nome.Enabled = false;
            Text_email.Enabled = false;
           
        }

        protected void btn_alterar_Click(object sender, ImageClickEventArgs e)
        {
            Desbloquear_text();
        }

        protected void Btn_salvar_Click(object sender, ImageClickEventArgs e)
        {
            string cpf = Text_CPF.Text;

            TB_VENDEDOR vendedor = context.TB_VENDEDOR.First(c => c.cpf == cpf);

            vendedor.nome = Text_nome.Text;
            vendedor.email = Text_email.Text;

            MessageBox.Show("Vendedor  Alterado Com Sucesso!!!");
            // COMMIT
            context.SaveChanges();
            // voltando para pegina Principal
            PaginaInicial();
        }

        protected void btn_excluir_Click(object sender, ImageClickEventArgs e)
        {
            string cpf = Text_CPF.Text;

            TB_VENDEDOR vendedor = context.TB_VENDEDOR.First(c => c.cpf == cpf);

            context.TB_VENDEDOR.Remove(vendedor);           

            MessageBox.Show("Vendedor Excluido Com Sucesso!!!");
            // COMMIT
            context.SaveChanges();
            // voltando para pegina Principal
            PaginaInicial();

        }
    }
}