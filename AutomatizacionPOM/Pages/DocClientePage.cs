using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutomatizacionPOM.Pages.Helpers;
using OpenQA.Selenium;

namespace AutomatizacionPOM.Pages
{
    public class DocClientePage
    {
        private IWebDriver driver;
        Utilities utilities;
        public DocClientePage(IWebDriver driver)
        {
            this.driver = driver;
            utilities = new Utilities(driver);
        }


        public static readonly By ClienteExistente = By.XPath("//*[@id='SelectorCliente']/ng-form/div/div/div[2]/p");
        public static readonly By ErrorCliente = By.XPath("//*[@id='id-menu-sidebar-principal']/div[4]");
        public static readonly By InputCliente = By.Id("DocumentoIdentidad");

        string docCliente = "";

        public void TipoDocumento(string tipoDoc)
        {
            docCliente = tipoDoc;
        }
        public void SelectCliente(string NumeroCliente)
        {

            utilities.ClearAndEnterText(InputCliente, NumeroCliente);
            utilities.Enter(InputCliente);

        }

        public void VerificarClienteExistente(string validacion)
        {
            bool isPresent = utilities.IsElementPresent(ClienteExistente);

            switch (validacion)
            {
                case "valido":
                    utilities.ClickButton(ClienteExistente);
                    break;
                case "invalido":
                    utilities.ClickButton(ErrorCliente);
                    break;
                default:
                    break;
            }
        }
    }
}
