using System.ComponentModel.DataAnnotations;

namespace Summer_Camp_Admin.Models
{
  public class Summer_Camp_Main_Datagrid
  {
      [Key]
      public int ID { get; set; }

      [MaxLength(10)]
      public string? FK_Student_Registration__Student_ID { get; set; }

      [MaxLength(500)]
      public string? Summer_Camp_Title { get; set; }

      [MaxLength(20)]
      public string? WeekNbr { get; set; }

      [MaxLength(200)]
      public string? SchoolName { get; set; }

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
