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
    /// Interaction logic for Change.xaml
    /// </summary>
    public partial class Change : Window
    {
        BankDataContextDataContext db = new BankDataContextDataContext();
        public Change()
        {
            InitializeComponent();
            cmbName.ItemsSource = db.Clients.ToList();
            puniListBox();
        }

        private void cmbName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Client clientschange = (Client)cmbName.SelectedItem;

            puniListBox();

            tbStreet.Text = clientschange.StreetName;
            tbStreetNumber.Text = clientschange.HouseNumber.ToString();
            tbPostCode.Text = clientschange.PostalCode.ToString();


            tbPostCode.Clear();
            tbStreet.Clear();
            tbStreetNumber.Clear();

                        
        }
        void puniListBox()
        {
            var list = from l in db.Clients
                       select l;

            lbInfo.ItemsSource = list;
        }
        private void btnSave_Click(object sender, RoutedEventArgs e)
        {

            if (String.IsNullOrEmpty(tbStreet.Text) || String.IsNullOrEmpty(tbStreetNumber.Text) || String.IsNullOrEmpty(tbPostCode.Text))
            {
                MessageBox.Show("You must fill in all the fields", "Error", MessageBoxButton.OK);
               
            }
            else { 
            Client clientschange = (Client)cmbName.SelectedItem;
            clientschange.StreetName = tbStreet.Text;
            clientschange.HouseNumber =int.Parse(tbStreetNumber.Text);
            clientschange.PostalCode = int.Parse(tbPostCode.Text);


            db.SubmitChanges();

            try
            {
                MessageBox.Show("You have successfully changed the customer's address", "Successful", MessageBoxButton.OK);


                tbPostCode.Clear();
                tbStreet.Clear();
                tbStreetNumber.Clear();

            }
            catch(Exception ex)
            {
                MessageBox.Show("Error" + ex);
            }
            
        }

       
    }
}
}
