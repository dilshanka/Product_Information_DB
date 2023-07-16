using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using ProductInformationDB.Data;
using ProductInformationDB.Messages;
using ProductInformationDB.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;



namespace ProductInformationDB.ViewModel

{
    public partial class LoginVM : ObservableObject
    {
        [ObservableProperty]
        public string userName;
        [ObservableProperty]
        public string password;

        [RelayCommand]
        public void Login()
        {
            if (!string.IsNullOrEmpty(UserName) || !string.IsNullOrEmpty(Password) || !string.IsNullOrWhiteSpace(UserName) || !string.IsNullOrWhiteSpace(Password))
            {
                //Verified user details with database
                int userId;
                using(var db = new SystemDbContext())
                {
                    UserModel user = db.Users.Where(u => u.Name == UserName && u.Password == Password).First();
                    if (user != null)
                    {
                        userId = user.Id;
                    }
                    else
                    {
                        userId = -1;
                    }
                }
                if (userId != -1)
                {
                    UserName = String.Empty;
                    Password = String.Empty;
                    WeakReferenceMessenger.Default.Send<UserLoginorUpdatedMessage>(new UserLoginorUpdatedMessage(userId));
                }
                else
                {
                    MessageBox.Show("The UserName or Password you entered is incorrect.", "Error!", MessageBoxButton.OK, MessageBoxImage.Warning);
                }

            }
            else
            {
                MessageBox.Show("The UserName or Password you entered is Empty.", "Error!", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
        }
        [RelayCommand]
        public void AppShutdown()
        {
            App.Current.Shutdown();
        }
        [RelayCommand]
        public void AppWindowMinimize()
        {
            App.Current.MainWindow.WindowState = WindowState.Minimized;
        }

    }


}












