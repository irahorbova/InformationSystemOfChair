using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InformationSystemOfChair.Entity;
using System.Data.Objects;


namespace ExampleOutputShedule
{
    public class InstiteGroupRepository
    {
        private readonly string connectionString;

        public InstiteGroupRepository(string connectionString) 
        {
            this.connectionString = connectionString;        
        }

        public InstituteGroup[] GetAllInstituteGroup()
        { 
            ObjectContext context = new ObjectContext(connectionString);
            ObjectSet<InstituteGroup> instituteGroupObjectSet = context.CreateObjectSet<InstituteGroup>();
            
            return instituteGroupObjectSet.ToArray<InstituteGroup>();
        }
    }
}
