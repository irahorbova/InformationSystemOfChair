using System;
using System.Collections.Generic;
using System.Data.Objects;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InformationSystemOfChair
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
            using (ObjectContext context = new ObjectContext(connectionString))
            {
                ObjectSet<Shedule> shedulesobjectset = context.CreateObjectSet<Shedule>();
                return shedulesobjectset.ToArray<Shedule>();
            }


        }
    }
}
