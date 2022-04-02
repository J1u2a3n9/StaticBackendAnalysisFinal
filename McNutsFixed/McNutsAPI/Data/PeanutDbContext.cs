using McNutsAPI.Data.Entities;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace McNutsAPI.Data
{
    public class PeanutDbContext:IdentityDbContext
    {
        public DbSet<PeanutEntity> Peanuts { get; set; }
        public DbSet<ClientEntity> Clients { get; set; }
        public PeanutDbContext(DbContextOptions<PeanutDbContext> options) : base(options){}
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.Entity<PeanutEntity>().ToTable("Peanut");
            builder.Entity<PeanutEntity>().Property(p => p.Id).ValueGeneratedOnAdd();
            builder.Entity<PeanutEntity>().HasMany(p => p.Clients).WithOne(c => c.Peanut);

            builder.Entity<ClientEntity>().ToTable("Client");
            builder.Entity<ClientEntity>().Property(c => c.Id).ValueGeneratedOnAdd();
            builder.Entity<ClientEntity>().HasOne(c => c.Peanut).WithMany(p => p.Clients);

            //dotnet tool install --global dotnet-ef
            //dotnet ef migrations add InitialCreate
            //dotnet ef database update
        }
    }
}
