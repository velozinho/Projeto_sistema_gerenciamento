//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Cadastro_Agendamentos
{
    using System;
    using System.Collections.Generic;
    
    public partial class TB_ENDERECO
    {
        public int Id { get; set; }
        public string logradouro { get; set; }
        public string numero { get; set; }
        public string estado { get; set; }
        public string bairro { get; set; }
        public string cpf_cli { get; set; }
        public string cep { get; set; }
    
        public virtual TB_CLIENTE TB_CLIENTE { get; set; }
    }
}
