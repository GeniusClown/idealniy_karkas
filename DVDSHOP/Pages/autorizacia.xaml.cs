using BookClub.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace BookClub.Pages
{
    /// <summary>
    /// Логика взаимодействия для avtorizacia.xaml
    /// </summary>
    public partial class avtorizacia : Page
    {
        public avtorizacia()
        {
            InitializeComponent();
            Connect.modeldb = new Models.DVDdbEntities();
        }
        private void TbxShowPass_MouseUp(object sender, MouseButtonEventArgs e)
        {
            TxbPassword.Visibility = Visibility.Collapsed;
            UrPassword.Visibility = Visibility.Visible;
        }

        private void TbxShowPass_MouseDown(object sender, MouseButtonEventArgs e)
        {
            TxbPassword.Visibility = Visibility.Visible;
            UrPassword.Visibility = Visibility.Collapsed;
            TxbPassword.Text = UrPassword.Password;
        }

        private void Vxod(object sender, RoutedEventArgs e)
        {
            var userObj = Connect.modeldb.users.FirstOrDefault(
                x => x.login == Login.Text && UrPassword.Password == x.password );
            if (userObj == null)
            {
                MessageBox.Show("Пользователя с такими данными не существует!","Ошибка при авторизации",
                    MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else 
            {
                if (userObj.id_type == 1) 
                {
                    Manager.MainFrame.Navigate(new RootMerch());
                }
                if (userObj.id_type == 2) 
                {
                    OrdersWindow ordersWindow = new OrdersWindow();
                    this.Visibility = Visibility.Hidden;
                    ordersWindow.Show();
                }
                if (userObj.id_type == 3)
                {
                    //OneOrder oneOrder = new OneOrder();
                    //oneOrder.Show();
                    Manager.MainFrame.Navigate(new merches());
                }
            }
        }
    }
}
