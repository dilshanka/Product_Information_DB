using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using ProductInformationDB.Model;

namespace ProductInformationDB.Data
{
    public class SystemDbContext : DbContext
    {

        private readonly string _path = @"C:\Users\ASUS\Desktop\final_p\SystemDataBase.db";
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite($"Data Source = {_path}");
        }

        public DbSet<ProductModel> Products { get; set; } 
        public DbSet<UserModel> Users{ get; set; } 








    }
}



/*#region Constructor
        public ProductDbContext(DbContextOptions<ProductDbContext> options) : base(options)
        {
            Database.EnsureCreated();
        }
        #endregion

        #region Public properties
        public DbSet<Product> Products { get; set; }
        #endregion

        #region Overridden methods
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Product>().HasData(GetProducts());
            base.OnModelCreating(modelBuilder);
        }
        #endregion

        #region Private methods
        private Product[] GetProducts()
        {
            return new Product[]
            {
            new Product { Id = 1, Name = "SSD Drive", Description = "1TB", Price = 12000, Unit =150},
            new Product { Id = 2, Name = "RAM", Description = "16GB", Price = 8000, Unit =50},
            new Product { Id = 3, Name = "Flash Drive", Description = "256GB", Price = 6000, Unit =75},
            new Product { Id = 4, Name = "SD Card", Description = "32GB", Price = 1200, Unit =100},
            };
        }
        #endregion*/