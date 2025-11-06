using System;
using AutomatizacionPOM.Pages;
using OpenQA.Selenium;
using Reqnroll;

namespace AutomatizacionPOM.StepDefinitions
{
    [Binding]
    public class ClienteDocStepDefinitions
    {
        private IWebDriver driver;
        DocClientePage newCliente;

        public ClienteDocStepDefinitions(IWebDriver driver)
        {
            this.driver = driver;
            this.newCliente = new DocClientePage(driver);
        }
        [Given("Colocar el tipo de {string}")]
        public void GivenColocarElTipoDe(string dNI)
        {
            newCliente.TipoDocumento(dNI);
        }

        [When("Colocar el número de documento {string}")]
        public void WhenColocarElNumeroDeDocumento(string p0)
        {
            newCliente.SelectCliente(p0);
        }

        [Then("El documento es {string}")]
        public void ThenElDocumentoEs(string valido)
        {
            newCliente.VerificarClienteExistente(valido);   
        }
    }
}
