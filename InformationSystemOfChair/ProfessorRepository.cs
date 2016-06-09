using System;
using System.Collections.Generic;
using System.Data.Objects;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InformationSystemOfChair
{
    public class ProfessorRepository
    {
        private readonly string connectionString;
        public ProfessorRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }
        public Professor[] GetALlProfessors()
        {
            using (ObjectContext context = new ObjectContext(connectionString))
            {
                ObjectSet<Professor> professorsobjectset = context.CreateObjectSet<Professor>();
                return professorsobjectset.ToArray<Professor>();
            }
            
        
        }
    }
}
