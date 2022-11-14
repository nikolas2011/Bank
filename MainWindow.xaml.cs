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

namespace Bank
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        BankDataContextDataContext db = new BankDataContextDataContext();
        public MainWindow()
            
        {
            InitializeComponent();
            puniGrid();
                     
          
        }    
        void puniGrid()
        {
            var accounts = from a in db.Accounts
                           select a;

            dataGrid.ItemsSource = accounts;
        }

      

        private void Status_Click(object sender, RoutedEventArgs e)
        {
            ChangeStatus status = new ChangeStatus();
            status.Show();
        }

        private void Adress_Click(object sender, RoutedEventArgs e)
        {
            Change change = new Change();
            change.Show();
        }

        private void btnVIP_Click(object sender, RoutedEventArgs e)
        {
            BankDataContextDataContext dd = new BankDataContextDataContext();

            var cust = from c in dd.Clients
                       where c.CustomerType == "Premium"
                       select new { c.Name, c.LastName, c.CountryName };

            lbShowClients.ItemsSource = cust;


        }

        private void btnSend_Click(object sender, RoutedEventArgs e)
        {
          /*  int accnumb = 1;
            float amount = 5000;

            var account = from a in db.Accounts
                          where a.idAccount == accnumb
                          select a.DepositedAmount;

            var izmenjeno = account + amount; */


        }

        float from()
        {
            float ukupno = 0;
            float amount = 0;
            float rezultat = 0;

            amount = int.Parse(tbAmount.Text);

            rezultat = ukupno - amount;


            return rezultat;
           

            
        }

        private void btnShow_Click(object sender, RoutedEventArgs e)
        {
            BankDataContextDataContext pp = new BankDataContextDataContext();

            var card = from c in pp.Accounts
                       join cc in pp.Clients
                       on c.idClient equals cc.idClient
                       where c.DepositedAmount < c.DepositedAmount * 0.1
                       select new { cc.Name, cc.LastName, c.DepositedAmount };

            lbcard.ItemsSource = card;

                           }

        private void dataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
