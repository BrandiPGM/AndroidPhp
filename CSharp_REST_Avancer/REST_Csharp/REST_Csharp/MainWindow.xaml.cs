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
        Countries regionResponse = new Countries();


        public MainWindow()
        {
            InitializeComponent();

            cboRegion.Items.Add("Oceania");
            cboRegion.Items.Add("Americas");
            cboRegion.Items.Add("Europe");
            cboRegion.Items.Add("Africa");
            cboRegion.Items.Add("Asia");
            cboRegion.SelectedIndex = 0;

            GetCurrencyWeather("Neuchatel");
            GetCurrencyWeather("La-chaux-de-fonds");
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

        private void cboCountry_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                Country country = new Country();
                country = regionResponse._CountriesList.Find(x => x.name == cboCountry.SelectedValue);


                //Nouvelles données dans la liste des pays
                tbxCountryInformation.Clear();
                tbxCountryInformation.Text += "Capitale : " + country.capital + Environment.NewLine;
                tbxCountryInformation.Text += "Population : " + country.population + Environment.NewLine;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void GetCurrencyWeather(string City)
        {
            Weather WeatherResponse = new Weather();

            try
            {
                string endPoint = @"http://www.prevision-meteo.ch/services/json/" + City;
                var client = new RestClient(endPoint);
                var json = client.MakeRequest();
                object objResponse = JsonConvert.DeserializeObject(json, typeof(Weather));
                
                //Converti dans le type requis
                WeatherResponse = (Weather)objResponse;

                if (City == "Neuchatel")
                {
                    tbxWeatherNE.Clear();
                    tbxWeatherNE.Text += WeatherResponse.current_condition.condition + Environment.NewLine;
                    tbxWeatherNE.Text += WeatherResponse.current_condition.tmp + Environment.NewLine;

                    // http://stackoverflow.com/questions/18435829/showing-image-in-wpf-using-the-url-link-from-database

                    var image = new Image();
                    var fullFilePath = WeatherResponse.current_condition.icon;

                    BitmapImage bitmap = new BitmapImage();
                    bitmap.BeginInit();
                    bitmap.UriSource = new Uri(fullFilePath, UriKind.Absolute);
                    bitmap.EndInit();

                    Image_NE.Source = bitmap;

                }

                if(City == "La-chaux-de-fonds")
                {
                    tbxWeatherCDF.Clear();
                    tbxWeatherCDF.Text += WeatherResponse.current_condition.condition + Environment.NewLine;
                    tbxWeatherCDF.Text += WeatherResponse.current_condition.tmp + Environment.NewLine;


                    var image = new Image();
                    var fullFilePath = WeatherResponse.current_condition.icon;

                    BitmapImage bitmap = new BitmapImage();
                    bitmap.BeginInit();
                    bitmap.UriSource = new Uri(fullFilePath, UriKind.Absolute);
                    bitmap.EndInit();

                    Image_CDF.Source = bitmap;

                }





            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        public class ImageItems
        {
            public String image { get; set; }

        }

    }
}