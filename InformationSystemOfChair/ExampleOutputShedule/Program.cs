using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InformationSystemOfChair;
using System.Configuration;
using InformationSystemOfChair.Entity;

namespace ExampleOutputShedule
{
    class Program
    {
        enum Days : int { Monday = 1, Tuesday = 2, Wednesday = 3, Thursday = 4, Friday = 5, Saturday = 6, Sunday = 7 };

        static string cs = ConfigurationManager.ConnectionStrings["db_information_system_of_chair_cs"].ConnectionString;

        static void Main(string[] args)
        {
            Console.WriteLine((int)Days.Monday);

            InstiteGroupRepository igr = new InstiteGroupRepository(cs);
            SheduleRepository sr = new SheduleRepository(cs);
            ProfessorRepository pr = new ProfessorRepository(cs);

            InstituteGroup[] allGroups = igr.GetAllInstituteGroup();
            Shedule[] shedule = sr.GetShedule();
            Professor[] professors = pr.GetAllProfessors();

            DateTime targetDay = new DateTime(2016, 5, 10);
            //DateTime targetDay = new DateTime(2016, 3, 7);
            bool isNumerator = true;
            DateTime startStudy = new DateTime(2016, 2, 22);

            double differance = targetDay.Subtract(startStudy).TotalDays;
            Console.WriteLine(differance);
            int countOfWeekAfterStartStudyDay = (int)differance / 7;

            //double a = (int)countOfWeekAfterStartStudyDay;!!!!!!!!!!

            if (countOfWeekAfterStartStudyDay % 2 == 0)
            {
                isNumerator = true;
            }
            else
            {
                isNumerator = false;
            }

            Console.WriteLine(isNumerator);

            Console.WriteLine(targetDay.DayOfWeek);

            for (int i = 0; i < shedule.Length; i++)
            {
                int dayOfWeek = 0;
                switch (targetDay.DayOfWeek.ToString())
                {
                    case "Monday":
                        dayOfWeek = 1;
                        break;
                    case "Tuesday":
                        dayOfWeek = 2;
                        break;
                    case "Wednesday":
                        dayOfWeek = 3;
                        break;
                    case "Thursday":
                        dayOfWeek = 4;
                        break;
                    case "Friday":
                        dayOfWeek = 5;
                        break;
                    case "Saturday":
                        dayOfWeek = 6;
                        break;
                    case "Sunday":
                        dayOfWeek = 7;
                        break;
                }

                if (shedule[i].IsNumerator == isNumerator && shedule[i].DayOfWeek == dayOfWeek && shedule[i].InstituteGroup == 1)
                {
                    switch (shedule[i].ClassNumber)
                    {
                        case 1:
                            Console.WriteLine("08 00 - 09 20 " + shedule[i].ClassRoom  + "  " + shedule[i].ClassName);
                            break;                           
                        case 2:                              
                            Console.WriteLine("09 40 - 11 00 " + shedule[i].ClassRoom + "  " + shedule[i].ClassName);
                            break;                           
                        case 3:                              
                            Console.WriteLine("11 15 - 12 35 " + shedule[i].ClassRoom + "  " + shedule[i].ClassName);
                            break;                           
                        case 4:                              
                            Console.WriteLine("13 00 - 14 20 " + shedule[i].ClassRoom + "  " + shedule[i].ClassName);
                            break;                           
                        case 5:                              
                            Console.WriteLine("14 35 - 15 55 " + shedule[i].ClassRoom + "  " + shedule[i].ClassName);
                            break;                           
                        case 6:                              
                            Console.WriteLine("16 05 - 17 25 " + shedule[i].ClassRoom + "  " + shedule[i].ClassName);
                            break;
                    }

                }
                
            }


            //string[] groups = new string[allGroups.Length];

            //for (int i = 0; i < allGroups.Length; i++)
            //{
            //    groups[i] = allGroups[i].Name;
            //    Console.WriteLine(groups[i]);
            //}

            //Console.WriteLine("-------------------------------------------");

            //for (int i = 0; i < shedule.Length; i++)
            //{
            //    Console.WriteLine(shedule[i].ClassName);
            //}

            //Console.WriteLine("--------------------------------------------");

            //for (int i = 0; i < professors.Length; i++)
            //{
            //    Console.WriteLine(professors[i].FullName);
            //}

            //Console.WriteLine("--------------------------------------------");

            Console.Read();
        }
    }
}
