using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace M8XamarinForms
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }
        async void OpenE1BridgePage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new E1BridgePage());
        }

        async void OpenNfcePage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new NFCEPage());
        }

        async void OpenPrinterPage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new PrinterPage("interna"));
        }

        async void OpenBarCodePage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new BarCodesPage());
        }
        async void OpenBalancaPage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new BalancaPage());
        }

        async void OpenTefPage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new TefPage());
        }

        async void OpenCarteiraDigitalPage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new CarteiraDigitalPage());
        }

        async void OpenSatPage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SatPage());
        }

        
    }
}
