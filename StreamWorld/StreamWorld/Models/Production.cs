using System.ComponentModel.DataAnnotations;

namespace StreamWorld.Models
{
    public class Production
    {
        [Key]
        public int _id { get; set; }

        [Display(Name = "Título da obra")]
        [Required(ErrorMessage = "O título é obrigatório.")]
        public string titulo { get; set; } = string.Empty;

        [Display(Name = "Data de Lançamento")]
        [DataType(DataType.Date)]
        public DateTime releaseDate { get; set; }

        [Display(Name = "Diretor")]
        [Required(ErrorMessage = "O diretor é obrigatório.")]
        public string director { get; set; } = string.Empty;

        [Display(Name = "Foto da Capa")]
        public string? coverPhoto { get; set; }

        public ICollection<ProductionsGenre>? productionsGenres { get; set; }
        public ICollection<ProductionsArtist>? productionsArtists { get; set; }
    }
}
