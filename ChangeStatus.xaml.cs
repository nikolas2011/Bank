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
using System.Windows.Shapes;

namespace Bank
{
    /// <summary>
    /// Interaction logic for ChangeStatus.xaml
    /// </summary>
    public partial class ChangeStatus : Window
    {
        BankDataContextDataContext db = new BankDataContextDataContext();
        public ChangeStatus()
        {
            InitializeComponent();
            cmbName.ItemsSource = db.Clients.ToList();
            puniListu();
        }

        private void cmbName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

            puniListu();
            Client type = (Client)cmbName.SelectedItem;

            tbType.Text = type.CustomerType;

            tbType.Clear();

        }
        void puniListu()
        {
            var list = from l in db.Clients
                       select l;

            lbName.ItemsSource = list;
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            if (tbType.Text=="Premium" || tbType.Text=="Regular")
            {
                Client f = (Client)cmbName.SelectedItem;

                f.CustomerType = tbType.Text;

                db.SubmitChanges();

                try
                {
                    MessageBox.Show("You have successfully changed the customer's status", "Successful", MessageBoxButton.OK);


                    tbType.Clear();

                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error" + ex);
                }
               

            }
            else
            {
                MessageBox.Show("Input error", "Error", MessageBoxButton.OK);

            }
        }
    }
}
