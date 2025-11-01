using System;
using OpenQA.Selenium;
using Reqnroll;

namespace AutomatizacionPOM.StepDefinitions
{
    [Binding]
    public class TomarAtencionStepDefinitions
    {
        private IWebDriver driver;

        [Given("Se selecciona el ambiente {string}")]
        public void GivenSeSeleccionaElAmbiente(string pRINCIPAL)
        {
            throw new PendingStepException();
        }

        [Given("Seleccion de la mesa {string} en estado {string}")]
        public void GivenSeleccionDeLaMesaEnEstado(string p0, string disponible)
        {
            throw new PendingStepException();
        }

        [Given("Se selecciona el mozo {string}")]
        public void GivenSeSeleccionaElMozo(string p0)
        {
            throw new PendingStepException();
        }

        [When("Se ingresa las siguientes ordenes:")]
        public void WhenSeIngresaLasSiguientesOrdenes(DataTable dataTable)
        {
            throw new PendingStepException();
        }

        [Then("Se procede a {string} la orden {string}")]
        public void ThenSeProcedeALaOrden(string guardar, string p1)
        {
            throw new PendingStepException();
        }
    }
}
