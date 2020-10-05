using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Text;
using System.Web.UI.WebControls;
using System.Windows.Forms;


namespace Cadastro_Agendamentos
{
    public partial class Cadastro_Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            PaginaInicial();
        }

        protected void Btn_salvar_Click(object sender, ImageClickEventArgs e)
        {
            Database_CadastroEntities4 context = new Database_CadastroEntities4();

            TB_CLIENTE cli = new TB_CLIENTE()
            {

                nome     = Text_nome.Text,
                cpf      = Text_cpf.Text,
                telefone = Text_telefone.Text,
                celular  = Text_celular.Text,
                email    = Text_email.Text,
            };

            TB_ENDERECO end = new TB_ENDERECO()
            {
                bairro     = Text_end_bairro.Text,
                numero     = Text_end_numero.Text,
                cpf_cli    = Text_cpf.Text,
                logradouro = Text_endereco.Text,
                estado     = Text_end_estado.Text,
                cep        = Text_end_cep.Text,

            };

                // Adcionando Registro
                context.TB_CLIENTE.Add(cli);
                context.TB_ENDERECO.Add(end);
                // Mensagem de Sucesso
                MessageBox.Show("Cliente  Inserido Com Sucesso!!!");
                // COMMIT
                context.SaveChanges();
               // voltando para pegina Principal
               PaginaInicial();
            
        }

        protected void PaginaInicial()
        {
            Response.Redirect("Tela_Principal.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Text_cpf_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Text_end_cep_TextChanged(object sender, EventArgs e)
        {

        }
    }
}