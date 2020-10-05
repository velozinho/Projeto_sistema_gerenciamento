using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Cadastro_Agendamentos
{
    public partial class Cadastro_Grupo : System.Web.UI.Page
    {
        Database_CadastroEntities4 context = new Database_CadastroEntities4();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadTable();
        }

        protected void btn_salvar_Click(object sender, ImageClickEventArgs e)
        {

            TB_GRUPO grupo = new TB_GRUPO()
            {
                nome      = Text_nome.Text,
                descricao = Text_descricao.Text,
                
            };

            // Adcionando Registro
            context.TB_GRUPO.Add(grupo);         
            
            // Mensagem de Sucesso
            MessageBox.Show("Grupo Inserido Com Sucesso!!!");

            // COMMIT
            context.SaveChanges();

            // Carregando a grid
            LoadTable();

            // Limpando text
            limpa_text();
        }
        protected void LoadTable()
        {            
            List<TB_GRUPO> list = context.TB_GRUPO.ToList<TB_GRUPO>();

            DataGrid_grupo.DataSource = list; //new BilheteriaDB().FindAll();
            DataGrid_grupo.DataBind();
        }

        protected void limpa_text()
        {
            Text_nome.Text = string.Empty;
            Text_descricao.Text = string.Empty;

        }

        protected void btn_voltar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Tela_Principal.aspx");
        }
    }
}