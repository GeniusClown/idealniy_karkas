﻿using System;
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
    /// Логика взаимодействия для TalonOrder.xaml
    /// </summary>
    public partial class TalonOrder : Page
    {
        public TalonOrder()
        {
            InitializeComponent();
        }

        private void SavePDF(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Талон успешно сохранён", "Сохранение талона",
                    MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }
    
}
