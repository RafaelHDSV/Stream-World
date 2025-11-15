using System.ComponentModel.DataAnnotations;

namespace StreamWorld.Models
{
    public class ProductionsArtist
    {
        public int productionId { get; set; }
        public Production? production { get; set; }
        public int artistsId { get; set; }
        public Artist? artists { get; set; }

        [Display(Name = "Nome do Personagem")]
        [Required(ErrorMessage = "O nome do personagem é obrigatório.")]
        public string characterName { get; set; } = string.Empty;
    }
}
