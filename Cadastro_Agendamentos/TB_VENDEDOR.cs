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
    
    public partial class TB_VENDEDOR
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TB_VENDEDOR()
        {
            this.TB_META = new HashSet<TB_META>();
        }
    
        public int codigo { get; set; }
        public string nome { get; set; }
        public string cpf { get; set; }
        public string email { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TB_META> TB_META { get; set; }
    }
}
