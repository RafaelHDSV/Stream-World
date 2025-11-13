using System.ComponentModel.DataAnnotations;

namespace StreamWorld.Models
{
    public class Artist
    {
        [Key]
        public int _id { get; set; }

        [Display(Name = "Nome Completo")]
        [Required(ErrorMessage = "O nome é obrigatório.")]
        public string name { get; set; } = string.Empty;

        [Display(Name = "Data de Nascimento")]
        [DataType(DataType.Date)]
        public DateTime birthdate { get; set; }

        [Display(Name = "País de Nascimento")]
        public string countryBirth { get; set; } = string.Empty;

        [Display(Name = "Foto")]
        public string? photo { get; set; }

        public ICollection<ProductionsArtist>? productionsArtists { get; set; }
    }
}
