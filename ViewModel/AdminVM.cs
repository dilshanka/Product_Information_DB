using CommunityToolkit.Mvvm.ComponentModel;
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
    public partial class AdminVM: ObservableObject
    {
        [ObservableProperty]
        public UserModel loginUser;
        [ObservableProperty]
        public ObservableCollection<ProductModel> products;


        public AdminVM()
        {
            WeakReferenceMessenger.Default.Register<UserLoginorUpdatedMessage>(this, OnUserLogged);
        }

        private void OnUserLogged(object recipient, UserLoginorUpdatedMessage message)
        {
            using (var db = new SystemDbContext())
            {
                LoginUser = db.Users.Where(u => u.Id == message.Value).First();
                if (db.Products.Any())
                {
                    Products = new ObservableCollection<ProductModel>(db.Products.ToList());
                }
            }

        }
    }
}
