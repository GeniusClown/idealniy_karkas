//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BookClub.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class merch
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public merch()
        {
            this.sostav = new HashSet<sostav>();
        }
    
        public int id { get; set; }
        public string photo { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string publisher { get; set; }
        public int price { get; set; }
        public Nullable<int> discount { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<sostav> sostav { get; set; }
    }
}