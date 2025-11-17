using System.ComponentModel.DataAnnotations;

namespace StreamWorld.Models
{
    public class Contact
    {
        [Key]
        public int _id { get; set; }

        [Display(Name = "Nome Completo")]
        public string name { get; set; } = string.Empty;

        [Display(Name = "Email")]
        [Required(ErrorMessage = "O e-mail é obrigatório.")]
        [EmailAddress(ErrorMessage = "O e-mail informado não é válido.")]
        public string email { get; set; } = string.Empty;

        [Display(Name = "Assunto")]
        [Required(ErrorMessage = "O assunto é obrigatório.")]
        public string subject { get; set; } = string.Empty;

        [Display(Name = "Mensagem")]
        [Required(ErrorMessage = "A mensagem é obrigatória.")]
        public string message { get; set; } = string.Empty;

        [Display(Name = "Data e Hora do Envio")]
        public DateTime submissionDate { get; set; } = DateTime.Now;
    }
}
