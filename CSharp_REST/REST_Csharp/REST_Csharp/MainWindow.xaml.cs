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
using HttpUtils;
using Newtonsoft.Json;

namespace REST_Csharp
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            cboRegion.Items.Add("Oceania");
            cboRegion.Items.Add("Americas");
            cboRegion.Items.Add("Europe");
            cboRegion.Items.Add("Africa");
            cboRegion.Items.Add("Asia");
            cboRegion.SelectedIndex = 0;
        }

        private void cboRegion_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                string endPoint = @"http://restcountries.eu/rest/v1/region/" + cboRegion.SelectedValue;
                var client = new RestClient(endPoint);
                var json = client.MakeRequest();
                object objResponse = JsonConvert.DeserializeObject(json, typeof(List<Country>));

                //Converti dans le type requis
                Countries regionResponse = new Countries();
                regionResponse._CountriesList = (List<Country>)objResponse;

                //Nouvelle données dans la liste des pays
                cboCountry.Items.Clear();
                int nbCountries = regionResponse._CountriesList.Count;
                for (int i = 0; i < nbCountries; i++)
                {
                    cboCountry.Items.Add(regionResponse._CountriesList[i].name);
                    cboCountry.SelectedIndex = 0;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

        }
    }
}
