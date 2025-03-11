using System.ComponentModel.DataAnnotations;

namespace Summer_Camp_Admin.Models
{
  public class Summer_Camp_Main_Datagrid
  {
    [Key]
    public int ID { get; set; }

    public string? UpdateUser { get; set; }
    public DateTime UpdateDate { get; set; }
    public string? ParentEmail { get; set; }
    public string? ParentPhone { get; set; }
    public string? PrimaryExceptionality { get; set; }
    public string? LEP { get; set; }
    public string? Gender { get; set; }
    public string? FreeMeals { get; set; }
    public string? FK_PCS_StudentLookup__Student_ID { get; set; }
    
    public int? FK_Summer_Camp_Choice { get; set; }

    public int? FK_Summer_Camps { get; set; }

    public string? FirstName { get; set; }

    public string? LastName { get; set; }

    public string? SchoolName { get; set; }

    public string? EthnicCode { get; set; }

    public string? Latino { get; set; }

    public string? Indian { get; set; }

    public string? Asian { get; set; }

    public string? Black { get; set; }

    public string? Pacific { get; set; }

    public string? White { get; set; }

    [MaxLength(500)]
    public string? Summer_Camp_Title { get; set; }

    [MaxLength(20)]
    public string? WeekNbr { get; set; }

    [MaxLength(200)]
    public string? CampName { get; set; }

    [MaxLength(4)]
    public string? School_ID { get; set; }

    [MaxLength(200)]
    public string? Location { get; set; }

    [MaxLength(200)]
    public string? Level { get; set; }

    [MaxLength(200)]
    public string? Grade { get; set; }

    [MaxLength(1)]
    public string? FK_Status { get; set; }

    [MaxLength(10)]
    public string? CalendarYR { get; set; }
  }
}
