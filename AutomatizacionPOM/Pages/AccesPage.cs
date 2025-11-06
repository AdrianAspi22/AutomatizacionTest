using AutomatizacionPOM.Pages.Helpers;
using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace AutomatizacionPOM.Pages
{
    public class AccessPage
    {
        private IWebDriver driver;
        Utilities utilities;

        public AccessPage(IWebDriver driver)
        {
            this.driver = driver;
            utilities = new Utilities(driver);
        }

        // LOGIN
        private By usernameField = By.XPath("//input[@id='Email']");
        private By passwordField = By.XPath("//input[@id='Password']"); 
        private By loginButton = By.XPath("//button[normalize-space()='Iniciar']");
        private By acceptButton = By.XPath("//button[contains(text(),'Aceptar')]");
        private By logo = By.XPath("//img[@id='ImagenLogo']");

        // VENTAS
        private By VentaField = By.XPath("//a[@class='menu-lista-cabecera']/span[text()='Venta']");
        private By NuevaVentaField = By.XPath("//a[normalize-space()='Nueva Venta']");
        private By VentaPorContingenciaField = By.XPath("//a[normalize-space()='Venta por Contingencia']");
        private By VentaCajaField = By.XPath("//a[normalize-space()='Venta Modo Caja']");
        private By EmpleadosField = By.XPath("//*[@id='wrapper']/aside/div/section/ul/li[13]/a");
        // SUBMÓDULOS
        private By VerEmpleadosField = By.XPath("//body/div[1]/aside/div/section/ul/li[13]/ul/li[1]/a");


        public void OpenToAplicattion(string url)
        {
            driver.Navigate().GoToUrl(url);
            
        }

        public void LoginToApplication(string _username, string _password)
        {
            utilities.EnterText(usernameField, _username);
            

            utilities.EnterText(passwordField, _password);
            

            utilities.ClickButton(loginButton);
            Thread.Sleep(4000);
            utilities.ClickButton(acceptButton);
            Thread.Sleep(4000);

            // Comprobar que el login fue exitoso
            var succesElement = driver.FindElement(logo);            
            Assert.IsNotNull(succesElement, "No se encontró el elemento de éxito después del login.");
        }

        public void enterModulo(string _modulo)
        {
            switch (_modulo)
            {
                case "Venta":
                    utilities.ClickButton(VentaField);
                    break;
                case "Empleado":
                    utilities.ClickButton(EmpleadosField);
                    break;
                case "Restaurante":
                    break;
                default:
                    throw new ArgumentException($"El {_modulo} no es válido.");
            }
            Thread.Sleep(4000);
        }

        public void enterSubModulo(string _submodulo)
        {
            switch (_submodulo)
            {
                case "Nueva Venta":
                    driver.FindElement(NuevaVentaField).Click();
                    
                    break;
                case "Venta por Contingencia":
                    driver.FindElement(VentaPorContingenciaField).Click();
                    Thread.Sleep(15000);
                    break;
                case "Venta Modo Caja":
                    driver.FindElement(VentaCajaField).Click();
                    Thread.Sleep(15000);
                    break;
                //ver empleado
                case "Ver":
                    // Encuentra el submódulo
                    IWebElement elementoSubModulo = driver.FindElement(VerEmpleadosField);

                    // Desplazar hasta el submódulo para que sea visible
                    ((IJavaScriptExecutor)driver).ExecuteScript("arguments[0].scrollIntoView(true);", elementoSubModulo);

                    // Hacer clic en el submódulo
                    elementoSubModulo.Click();

                    // Espera para que la página cargue
                    Thread.Sleep(15000);
                    break;
                default:
                    throw new ArgumentException($"El {_submodulo} no es válido.");
            }
            Thread.Sleep(10000);
        }
    }
}
