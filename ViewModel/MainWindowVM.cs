using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Messaging;
using ProductInformationDB.Data;
using ProductInformationDB.Messages;
using ProductInformationDB.Model;
using ProductInformationDB.View;
using System;
using System.Linq;

namespace ProductInformationDB.ViewModel
{
    public partial class MainWindowVM : ObservableObject
    {
        public UserModel CurrentUser { get; set; }

        [ObservableProperty]
        public Object currentPage;
        public LoginVM loginVM {  get; set; }
        public AdminVM adminVM { get; set; }
        public UserVM userVM { get; set; }
        public MainWindowVM()
        {
            
            loginVM = new LoginVM();
            adminVM = new AdminVM();
            userVM = new UserVM();
            CurrentPage = loginVM;
            WeakReferenceMessenger.Default.Register<UserLoginorUpdatedMessage>(this, OnUserLogin);
        }

        private void OnUserLogin(object recipient, UserLoginorUpdatedMessage message)
        {
            if (message != null)
            {
                using(var db = new SystemDbContext()){
                    CurrentUser = db.Users.Where(u => u.Id == message.Value).First();
                }
                if(CurrentUser.IsAdmin)
                {
                    CurrentPage = adminVM;
                }
                else
                {
                    CurrentPage = userVM;
                }
            }
        }
    }
}
