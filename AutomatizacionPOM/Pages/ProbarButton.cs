using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutomatizacionPOM.Pages.Helpers;
using OpenQA.Selenium;

namespace AutomatizacionPOM.Pages
{
    public class ProbarButton
    {
        private IWebDriver driver;
        Utilities utilities;
        public ProbarButton(IWebDriver driver)
        {
            this.driver = driver;
            utilities = new Utilities(driver);
        }

        public static readonly By selConceptSelection = By.XPath("//body/div[@id='wrapper']/div[1]/section[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[1]/div[1]/registrador-detalles[1]/div[1]/div[1]/selector-concepto-comercial[1]/ng-form[1]/div[1]/div[3]/div[1]/div[1]/span[1]/span[1]/span[1]");

        public static readonly By CR1 = By.XPath("//*[@id='radio2']");
        public static readonly By CR2 = By.XPath("//body/div[1]/div/section/div/div/div[1]/form/div[2]/facturacion-venta/form/div/div[2]/div/div[8]/editor-pago/div/div/div/div/div[1]/div[2]/input");
        public static readonly By CR3 = By.Id("radio2");

        public static readonly By CC1 = By.XPath("//*[@id='radio3']");



        //tarjeta debito

        public static readonly By TarjetaDebito = By.XPath("//*[@id='labelMedioPago-0-18']");   



        public static readonly By Banco = By.XPath("//*[@id='traza-pago']/div[6]/div/span[1]/span[1]/span/span[2]");
        public static readonly By BancoInput = By.XPath("//*[@id='traza-pago']/div[6]/div/span[3]/span/span[1]/input");
        string NameBanco = "BBVA";
        //*[@id=traza-pago']/div[6]/div/span[3]/span/span[1]/input

        public static readonly By Entidad = By.XPath("//*[@id='traza-pago']/div[6]/div/span[2]/span[1]/span/span[2]");
        public static readonly By EntidadInput = By.XPath("//*[@id='traza-pago']/div[6]/div/span[3]/span/span[1]/input");
        string NameEntidad = "VISA";
        //*[@id="traza-pago"]/div[6]/div/span[3]/span/span[1]/input
        public static readonly By Info = By.XPath("//body/div[1]/div/section/div/div/div[1]/form/div[2]/facturacion-venta/form/div/div[2]/div/div[8]/editor-pago/div/div/div/div/editor-traza-pago/div/div[6]/div/textarea");
        //body/div[1]/div/section/div/div/div[1]/form/div[2]/facturacion-venta/form/div/div[2]/div/div[8]/editor-pago/div/div/div/div/editor-traza-pago/div/div[6]/div/textarea
        //*[@id="informacion"]
        //*[@id="labelMedioPago-0-18"]
        //*[@id=´'traza-pago']/div[6]/div/span[2]/span[1]/span/span[2]
        //*[@id="informacion"]


        public static readonly By Guardar = By.XPath("//body/div[1]/div/section/div/div/div[1]/div[2]/div/button");
        //body/div[1]/div/section/div/div/div[1]/div[2]/div/button
        //*[@id="modelo"]/div[1]/div[2]/div/button


        string infoTarjeta = "hola";

        public void SelectConcept()
        {
            string codeconcept = "400000437";
            utilities.SelectOption(selConceptSelection, codeconcept);
            Thread.Sleep(2000);
        }


        public void ButtonCR()
        {
            /*utilities.ClickButton(CC1);
            Thread.Sleep(1000);*/
            return;
        }

        public void SelectTarjeta()
        {
            ((IJavaScriptExecutor)driver).ExecuteScript("window.scrollTo(0, document.body.scrollHeight);");

            utilities.ClickButton(TarjetaDebito);

            utilities.ClickButton(Banco);
       
            utilities.ClearAndEnterText(BancoInput, NameBanco);
            // Desplazar hasta el final de la página


            utilities.ClickButton(Entidad);
            utilities.ClearAndEnterText(EntidadInput, NameEntidad);


            utilities.EnterText(Info, infoTarjeta);

            utilities.ClickButton(Guardar); 

            Thread.Sleep(10000);

        }

    }
}
