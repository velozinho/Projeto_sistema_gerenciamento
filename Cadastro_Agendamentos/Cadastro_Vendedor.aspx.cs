using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Cadastro_Agendamentos
{
    public partial class Cadastro_Vendedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_salvar_ima_Click(object sender, ImageClickEventArgs e)
        {
            string idItem = Request.QueryString["codigo"];
            Database_CadastroEntities4 context = new Database_CadastroEntities4();

            TB_VENDEDOR vend = new TB_VENDEDOR()
            {

                nome = txt_nome.Text,
                cpf = txt_cpf.Text,
                email = txt_email.Text,

            };


            if (String.IsNullOrEmpty(idItem))
            {
                // Adcionando Registro
                context.TB_VENDEDOR.Add(vend);
                // Mensagem de Sucesso
                MessageBox.Show("Vendedor Inserido Com Sucesso!");
                // COMMIT
                context.SaveChanges();
                // voltando para pegina Principal
                Response.Redirect("Tela_Principal.aspx");

            }


        }

        protected void btn_voltar_ima_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Tela_Principal.aspx");
        }
    }
}