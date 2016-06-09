using System;
using System.Collections.Generic;
using System.Data.Objects;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InformationSystemOfChair
{
    class InstituteGroupRepository
    {
        private readonly string connectionString;
        public InstituteGroupRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }
        public InstituteGroup[] GetALlInstituteGroups()
        {
            using (ObjectContext context = new ObjectContext(connectionString))
            {
                ObjectSet<InstituteGroup> institutegroupsobjectset = context.CreateObjectSet<InstituteGroup>();
                return institutegroupsobjectset.ToArray<InstituteGroup>();
            }


        }
    }
}
