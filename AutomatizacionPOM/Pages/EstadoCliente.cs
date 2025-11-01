using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutomatizacionPOM.Pages.Helpers;
using OpenQA.Selenium;

namespace AutomatizacionPOM.Pages
{
    public class EstadoCliente
    {
        private IWebDriver driver;
        Utilities utilities;
        public EstadoCliente(IWebDriver driver)
        {
            this.driver = driver;
            utilities = new Utilities(driver);
        }

        public static readonly By editarEmpleado = By.XPath("//tbody/tr[1]/td[9]/button[1]");

        public static readonly By estadoEmpleadoContainer = By.Id("select2-estadoCivil-container");

        public static readonly By estadoEmpleadoInput = By.XPath("//*[@id='form_actor_comercial']/div[2]/div/div[2]/div/div[4]/div/div[1]/div/span[2]/span/span[1]/input");

        public static readonly By GuardarEmpleado = By.XPath("//*[@id='modal-registro-actor-comercial']/div/div[3]/a[1]");
        public void EditarEstadoEmpleado()
        {
            Thread.Sleep(4000);
            // Desplazar hasta el inicio de la página
            ((IJavaScriptExecutor)driver).ExecuteScript("window.scrollTo(0, 0);");
            utilities.ClickButton(editarEmpleado);
        }

        public void CambiarEstadoEmpleado(string estado)
        {
            utilities.ClickButton(estadoEmpleadoContainer);
            utilities.ClearAndEnterText(estadoEmpleadoInput, estado);
            // Desplazar hasta el final de la página
            ((IJavaScriptExecutor)driver).ExecuteScript("window.scrollTo(0, document.body.scrollHeight);");
            Thread.Sleep(2000);
        }

        public void GuardarCambios()
        {
            utilities.ClickButton(GuardarEmpleado);
        }

    }
}
