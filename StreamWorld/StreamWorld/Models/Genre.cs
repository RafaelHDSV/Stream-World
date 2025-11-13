using System.ComponentModel.DataAnnotations;

namespace StreamWorld.Models
{
    public class Genre
    {
        [Key]
        public int _id { get; set; }

        [Display(Name = "Nome")]
        [Required(ErrorMessage = "O nome do gênero é obrigatório.")]
        public string name { get; set; } = string.Empty;

        public ICollection<ProductionsGenre>? productionsGenres { get; set; }
    }
}
