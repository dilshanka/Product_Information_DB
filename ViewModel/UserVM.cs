using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using ProductInformationDB.Data;
using ProductInformationDB.Messages;
using ProductInformationDB.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductInformationDB.ViewModel
{
    public partial class UserVM : ObservableObject
    {
        [ObservableProperty]
        public UserModel loginUser;
        [ObservableProperty]
        public ProductModel currentProduct;
        [ObservableProperty]
        public ObservableCollection<ProductModel> products;
        [ObservableProperty]
        public string name;
        [ObservableProperty]
        public string description;
        [ObservableProperty]
        public int price;
        [ObservableProperty]
        public int amount;
        public UserVM()
        {
            WeakReferenceMessenger.Default.Register<UserLoginorUpdatedMessage>(this, OnUserLogged);
        }

        private void OnUserLogged(object recipient, UserLoginorUpdatedMessage message)
        {
            using (var db = new SystemDbContext())
            {
                LoginUser = db.Users.Where(u => u.Id == message.Value).First();
                Products = new ObservableCollection<ProductModel>(db.Products.Where(p=>p.User.Id == message.Value).ToList());
            }

        }

        [RelayCommand]
        public void AddProduct()
        {
            using (var db = new SystemDbContext())
            {
                db.Products.Add(new ProductModel()
                {
                    Name = Name,
                    Description = Description,
                    Price = Price,
                    Unit = Amount,
                    User = db.Users.Where(u=>u.Id==LoginUser.Id).First()
                });
                db.SaveChanges();
                Products = new ObservableCollection<ProductModel>(db.Products.Where(p => p.User.Id == LoginUser.Id).ToList());
            }
        }
        [RelayCommand]
        public void RemoveProduct()
        {
            using (var db = new SystemDbContext())
            {
                ProductModel product =  db.Products.Where(p=>p.Id == CurrentProduct.Id).First();
                db.Products.Remove(product);
                db.SaveChanges();
                CurrentProduct = null;
                Products = new ObservableCollection<ProductModel>(db.Products.Where(p => p.User.Id == LoginUser.Id).ToList());
            }

        }
        [RelayCommand]
        public void EditProduct()
        {
            using (var db = new SystemDbContext())
            {
                ProductModel product = new ProductModel()
                {
                    Id = CurrentProduct.Id,
                    Name = CurrentProduct.Name,
                    Description = CurrentProduct.Description,
                    Price = CurrentProduct.Price,
                    Unit = CurrentProduct.Unit,
                    User = db.Users.Where(u => u.Id == LoginUser.Id).First()
                };
                db.Products.Update(product);
                db.SaveChanges();
                Products = new ObservableCollection<ProductModel>(db.Products.Where(p => p.User.Id == LoginUser.Id).ToList());

            }
        }
    }
}
