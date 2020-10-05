using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Cadastro_Agendamentos
{
    public partial class Cadastro_Produto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_voltar_Click(object sender, ImageClickEventArgs e)
        {
            PaginaInicial();
        }

        protected void PaginaInicial()
        {
            Response.Redirect("Tela_Principal.aspx");
        }

        protected void btn_salvar_Click(object sender, ImageClickEventArgs e)
        {
            Database_CadastroEntities4 context = new Database_CadastroEntities4();


            TB_PRODUTO produto = new TB_PRODUTO();

            produto = ValidacaoImagem();

            produto.codigo      = Text_codigo.Text;
            produto.descricao   = Text_descricao.Text;
            produto.grupo       = Text_grupo.Text;
            produto.custo       = (float)Convert.ToInt64(Text_custo.Text);
            produto.valor_final = (float)Convert.ToInt64(Text_valorFinal.Text);
            produto.qtd_produto = (int)Convert.ToInt64(Text_qtd.Text); 

            // Adcionando Registro
            context.TB_PRODUTO.Add(produto);

            // Mensagem de Sucesso
            MessageBox.Show(" Produto  Inserido Com Sucesso!!!");
            // COMMIT
            context.SaveChanges();
            // voltando para pegina Principal
            PaginaInicial();
        }

        protected TB_PRODUTO ValidacaoImagem()
        {
            TB_PRODUTO prod = new TB_PRODUTO();

            if (File_imagem.PostedFile == null || string.IsNullOrEmpty(File_imagem.PostedFile.FileName) || File_imagem.PostedFile.InputStream == null)
            {
                MessageBox.Show("Erro - Não foi possível enviar o arquivo");          

            }
            else
            {

                //obtem a extensão do arquivo enviado 
                string extensao = Path.GetExtension(File_imagem.PostedFile.FileName).ToLower();

                string tipoArquivo = null;

                switch (extensao)
                {
                    case ".gif":
                        tipoArquivo = "image/gif";
                        break;
                    case ".jpg":
                    case ".jpeg":
                    case ".jpe":
                    case ".png":
                        tipoArquivo = "image/jpeg";
                        break;                      
                }

                byte[] imageBytes = new byte[File_imagem.PostedFile.InputStream.Length + 1];
                File_imagem.PostedFile.InputStream.Read(imageBytes, 0, imageBytes.Length);

                prod.foto = imageBytes;
                prod.mime = tipoArquivo;
            }

            return prod;
        }
    }
}
