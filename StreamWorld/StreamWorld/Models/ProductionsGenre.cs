namespace StreamWorld.Models
{
    public class ProductionsGenre
    {
        public int productionId { get; set; }
        public Production? production { get; set; }
        public int genresId { get; set; }
        public Genre? genres { get; set; }
    }
}
