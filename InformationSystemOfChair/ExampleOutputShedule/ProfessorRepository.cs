using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InformationSystemOfChair.Entity;
using System.Data.Objects;


namespace ExampleOutputShedule
{
    public class ProfessorRepository
    {
        private readonly string connectionString;

        public ProfessorRepository(string connectionString) 
        {
            this.connectionString = connectionString;        
        }

        public Professor[] GetAllProfessors()
        { 
            ObjectContext context = new ObjectContext(connectionString);
            ObjectSet<Professor> professorObjectSet = context.CreateObjectSet<Professor>();

            return professorObjectSet.ToArray<Professor>();
        }
    }
}
