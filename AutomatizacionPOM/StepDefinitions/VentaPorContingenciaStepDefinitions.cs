using System;
using System.Net;
using AutomatizacionPOM.Pages;
using OpenQA.Selenium;
using Reqnroll;

namespace AutomatizacionPOM.StepDefinitions
{
    [Binding]
    public class VentaPorContingenciaStepDefinitions
    {
        private IWebDriver driver;
        VentaContingencia newSale;

        public VentaPorContingenciaStepDefinitions(IWebDriver driver)
        {
            this.driver = driver;
            this.newSale = new VentaContingencia(driver);
        }

        [When("el usuario selecciona el producto {string}")]
        public void WhenElUsuarioSeleccionaElProducto(string concepto)
        {
            newSale.SelectConcept(concepto);
        }

        [When("define la cantidad {string}")]
        public void WhenDefineLaCantidad(string cantidad)
        {
            newSale.SelecAmount(cantidad);
        }

        [When("define IGV {string}")]
        public void WhenDefineIGV(string estado)
        {
            newSale.ClicIGV(estado);
        }

        [When("define detalle unificado {string}")]
        public void WhenDefineDetalleUnificado(string estado)
        {
            newSale.ClicDetUni(estado);
        }

        [When("selecciona el documento {string}")]
        public void WhenSeleccionaElDocumento(string p0)
        {
            newSale.SelectDocumentoVenta(p0);
        }

        [When("ingresa el DNI {string}")]
        public void WhenIngresaElDNI(string dni)
        {
            newSale.RegistrarCliente(dni);
        }

        [When("ingresa el RUC {string}")]
        public void WhenIngresaElRUC(string ruc)
        {
            newSale.RegistrarCliente(ruc);
        }

        [When("escribe observación {string}")]
        public void WhenEscribeObservacion(string ninguno)
        {
            newSale.IngresarObservacion(ninguno);
        }

        [When("define la fecha de emisión {string}")]
        public void WhenDefineLaFechaDeEmision(string p0)
        {
            newSale.DefinirFechaEmision(p0);
        }

        [When("define la entrega {string}")]
        public void WhenDefineLaEntrega(string inmediata)
        {
            newSale.SeleccionarEntregaDiferida(inmediata);
        }

        [Then("la venta se genera correctamente")]
        public void ThenLaVentaSeGeneraCorrectamente()
        {
            newSale.VerificarExistenciaInconsistencia();
        }
    }
}
