using System;
using AutomatizacionPOM.Pages;
using OpenQA.Selenium;
using Reqnroll;

namespace AutomatizacionPOM.StepDefinitions
{
    [Binding]
    public class EmpleadosStepDefinitions
    {
        private IWebDriver driver;
        EstadoCliente newEstadoCliente;

        public EmpleadosStepDefinitions(IWebDriver driver)
        {
            this.driver = driver;
            this.newEstadoCliente = new EstadoCliente(driver);
        }

        [When("Seleccion un empleado a editar")]
        public void WhenSeleccionUnEmpleadoAEditar()
        {
            newEstadoCliente.EditarEstadoEmpleado();
        }

        [When("Cambiar el estado civil a {string}")]
        public void WhenCambiarElEstadoCivilA(string p0)
        {
            newEstadoCliente.CambiarEstadoEmpleado(p0);
        }

        [When("Guardar estado civil")]
        public void WhenGuardarEstadoCivil()
        {
            newEstadoCliente.GuardarCambios();
        }

        [When("Editar el mismo empleado")]
        public void WhenEditarElMismoEmpleado()
        {
            newEstadoCliente.EditarEstadoEmpleado();
        }

        [When("Volve Cambiar el estado civil a {string}")]
        public void WhenVolveCambiarElEstadoCivilA(string p0)
        {
            newEstadoCliente.CambiarEstadoEmpleado(p0);
        }
        [Then("Volvel a Guardar estado civil")]
        public void ThenVolvelaGuardarestadocivil()
        {
            newEstadoCliente.GuardarCambios();
        }
    }
}
