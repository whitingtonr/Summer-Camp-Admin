using System.ComponentModel.DataAnnotations;

namespace Summer_Camp_Admin.Models
{
  public class Summer_Camp_Status_Lookup
  {
    [Key]
    public string? ID_Code { get; set; }

    public string? Desc { get; set; }
  }
}
