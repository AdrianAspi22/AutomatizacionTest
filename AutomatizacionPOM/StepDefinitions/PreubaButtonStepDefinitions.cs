using System;
using AutomatizacionPOM.Pages;
using OpenQA.Selenium;
using Reqnroll;

namespace AutomatizacionPOM.StepDefinitions
{
    [Binding]
    public class PreubaButtonStepDefinitions
    {
        private IWebDriver driver;
        ProbarButton newButton;

        public PreubaButtonStepDefinitions(IWebDriver driver)
        {
            this.driver = driver;
            this.newButton = new ProbarButton(driver);
        }

        [Given("seleccionar el prmeri Button CR")]
        public void GivenSeleccionarElPrmeriButtonCR()
        {
            newButton.SelectConcept();
            newButton.ButtonCR();
        }

        [When("Cambiar el siguiente Button CO")]
        public void WhenCambiarElSiguienteButtonCO()
        {
            newButton.SelectTarjeta();
        }

        [When("probar debito")]
        public void WhenProbarDebito()
        {
            newButton.SelectTarjeta();
        }


        [Then("funcionalidad completa")]
        public void ThenFuncionalidadCompleta()
        {
            throw new PendingStepException();
        }
    }
}
