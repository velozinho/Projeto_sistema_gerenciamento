using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Cadastro_Agendamentos
{
    public partial class Buscar_cliente : System.Web.UI.Page
    {
        Database_CadastroEntities4 context = new Database_CadastroEntities4();
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            string cpf = Text_cpf.Text;

            TB_CLIENTE cliente = context.TB_CLIENTE.First(c => c.cpf == cpf);
            TB_ENDERECO endereco = context.TB_ENDERECO.First(c => c.cpf_cli == cpf);

            Text_nome.Text       = cliente.nome;
            Text_telefone.Text   = cliente.telefone;
            Text_celular.Text    = cliente.celular;
            Text_email.Text      = cliente.email;
            Text_endereco.Text   = endereco.logradouro;
            Text_end_numero.Text = endereco.numero;
            Text_end_cep.Text    = endereco.cep;
            Text_end_estado.Text = endereco.estado;
            Text_end_bairro.Text = endereco.bairro;

            Bloquear_text();

        }

        protected void limpa_text()
        {
            Text_nome.Text = string.Empty;
          //  Text_descricao.Text = string.Empty;

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Text_end_cep_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            PaginaInicial();

        }

        protected void PaginaInicial()
        {
            Response.Redirect("Tela_Principal.aspx");
        }

        protected void Btn_salvar_Click(object sender, ImageClickEventArgs e)
        {
            string cpf = Text_cpf.Text;

            TB_CLIENTE cliente = context.TB_CLIENTE.First(c => c.cpf == cpf);
            TB_ENDERECO endereco = context.TB_ENDERECO.First(c => c.cpf_cli == cpf);

            cliente.nome        = Text_nome.Text;
            cliente.telefone    = Text_telefone.Text;
            cliente.celular     = Text_celular.Text;
            cliente.email       = Text_email.Text;
            endereco.logradouro = Text_endereco.Text;
            endereco.numero     = Text_end_numero.Text;
            endereco.cep        = Text_end_cep.Text;
            endereco.estado     = Text_end_estado.Text;
            endereco.bairro     = Text_end_bairro.Text;


            MessageBox.Show("Cliente  Alterado Com Sucesso!!!");
            // COMMIT
            context.SaveChanges();
            // voltando para pegina Principal
            PaginaInicial();
        }

        protected void Bloquear_text()
        {
            Text_nome.Enabled       = false;
            Text_telefone.Enabled   = false;
            Text_celular.Enabled    = false;
            Text_email.Enabled      = false;
            Text_endereco.Enabled   = false;
            Text_end_numero.Enabled = false;
            Text_end_cep.Enabled    = false;
            Text_end_estado.Enabled = false;
            Text_end_bairro.Enabled = false;
        }

        protected void Desbloquear_text()
        {
            Text_cpf.Enabled        = false;
            Text_nome.Enabled       = true;
            Text_telefone.Enabled   = true;
            Text_celular.Enabled    = true;
            Text_email.Enabled      = true;
            Text_endereco.Enabled   = true;
            Text_end_numero.Enabled = true;
            Text_end_cep.Enabled    = true;
            Text_end_estado.Enabled = true;
            Text_end_bairro.Enabled = true;
        }

        protected void btn_alterar_Click(object sender, ImageClickEventArgs e)
        {
            Desbloquear_text();
        }

        protected void btn_excluir_Click(object sender, ImageClickEventArgs e)
        {
            string cpf = Text_cpf.Text;

            TB_CLIENTE cliente = context.TB_CLIENTE.First(c => c.cpf == cpf);
            TB_ENDERECO endereco = context.TB_ENDERECO.First(c => c.cpf_cli == cpf);

            context.TB_CLIENTE.Remove(cliente);
            context.TB_ENDERECO.Remove(endereco);

            MessageBox.Show("Cliente  Excluido Com Sucesso!!!");
            // COMMIT
            context.SaveChanges();
            // voltando para pegina Principal
            PaginaInicial();


        }
    }
}