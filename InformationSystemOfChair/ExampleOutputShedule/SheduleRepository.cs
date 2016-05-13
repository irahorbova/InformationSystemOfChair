using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InformationSystemOfChair.Entity;
using System.Data.Objects;


namespace ExampleOutputShedule
{
    public class SheduleRepository
    {
        private readonly string connectionString;

        public SheduleRepository(string connectionString) 
        {
            this.connectionString = connectionString;        
        }

        public Shedule[] GetShedule()
        { 
            ObjectContext context = new ObjectContext(connectionString);
            ObjectSet<Shedule> sheduleObjectSet = context.CreateObjectSet<Shedule>();
            
            return sheduleObjectSet.ToArray<Shedule>();
        }
    }
}
