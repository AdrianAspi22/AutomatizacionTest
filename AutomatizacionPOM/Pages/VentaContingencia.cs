using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using AutomatizacionPOM.Pages.Helpers;
using NUnit.Framework;
using OpenQA.Selenium;

namespace AutomatizacionPOM.Pages
{
    public class VentaContingencia
    {
        private IWebDriver driver;
        Utilities utilities;
        public VentaContingencia(IWebDriver driver)
        {
            this.driver = driver;
            utilities = new Utilities(driver);
        }

        public static readonly By selConceptSelection = By.XPath("//body/div[@id='wrapper']/div[1]/section[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[1]/div[1]/registrador-detalles[1]/div[1]/div[1]/selector-concepto-comercial[1]/ng-form[1]/div[1]/div[3]/div[1]/div[1]/span[1]/span[1]/span[1]");
        public static readonly By ConceptAmount = By.Id("cantidad-0");
        public static readonly By IgvActive = By.Id("ventaigv0");
        public static readonly By DetUniActive = By.Id("detalleunificado0");
        public static readonly By IdCustomer = By.Id("DocumentoIdentidad");

        public static readonly By observacion = By.Id("observacion");//div[@class='col-md-12 col-xs-12 group-model p-0']//textarea[@id='observacion']
        public static readonly By fechaEmision = By.Id("fechaEmision");//input[@id='fechaEmision']
        public static readonly By EntregaDiferida = By.XPath("//input[@id='radioEntrega2']");
        public static readonly By verificacionInconcistecia = By.XPath("//div[@class='box box-primary']//h4[@class='error-title'][normalize-space()='INCONSISTENCIA(S):']");

        public static int identificadorSalto = 0;
        public static string identificadorDocumento = "";
        public void SelectConcept(string codeconcept)
        {
            
            Thread.Sleep(10000);
            if(codeconcept == "0")
            {
                // No selecciona nada, solo sigue al siguiente paso
                identificadorSalto = 1;
                return;
            } 
                utilities.SelectOption(selConceptSelection, codeconcept);      
        }

        public void SelecAmount(string amount)
        {
            if (identificadorSalto == 1)
            {
                identificadorSalto = 0;
                // No selecciona nada, solo sigue al siguiente paso
                return;
            }
            if (amount == "0")
            {
                // No selecciona nada, solo sigue al siguiente paso
                return;
            }
            utilities.ClearAndEnterText(ConceptAmount, amount);
        }

        public void ClicIGV(string decicion)
        {
            if (decicion == "0")
            {
                // No selecciona nada, solo sigue al siguiente paso
                return;
            }
            utilities.ClickButton(IgvActive);
        }

        public void ClicDetUni(string decicion)
        {
            if (decicion == "0")
            {
                // No selecciona nada, solo sigue al siguiente paso
                return;
            }
            utilities.ClickButton(DetUniActive);
        }

        public void SelectDocumentoVenta(string docVenta)
        {
            // No implementado aún
            return;
        }

        public void RegistrarCliente(string doc)
        {
            if (doc.Length == 8)
            {
                identificadorDocumento = "DNI";
            } 
            else if (doc.Length == 11)
            {
                identificadorDocumento = "RUC";
            }
            else
            {
                return;
            }
            
            switch (doc)
                {
                case "DNI":
                    utilities.ClearAndEnterText(IdCustomer, doc);
                    utilities.Enter(IdCustomer);
                    break;
                case "RUC":
                    utilities.ClearAndEnterText(IdCustomer, doc);
                    utilities.Enter(IdCustomer);
                    break;
                case "OTRO":
                    break;
                default:
                    break;
                }
            // No implementado aún
        }

        public void IngresarObservacion(string texto)
        {
            if(texto == "0")
            {
                utilities.ClearAndEnterText(observacion, "");
                // No selecciona nada, solo sigue al siguiente paso
                return;
            }
            utilities.ClearAndEnterText(observacion, texto);
        }

        public void DefinirFechaEmision(string fecha)
        {
            if (fecha == "0")
            {
                // No selecciona nada, solo sigue al siguiente paso
                return;
            }
            utilities.ClearAndEnterText(fechaEmision, fecha);
        }

        public void SeleccionarEntregaDiferida(string entrega)
        {
            if (entrega == "0")
            {
                //driver.FindElement(EntregaDiferida).Click();
                // No selecciona nada, solo sigue al siguiente paso
                return;
            }
            return;
        }
        public void VerificarExistenciaInconsistencia()
        {
            // Verificar si el elemento está presente
            bool existeInconsistencia = utilities.IsElementPresent(verificacionInconcistecia);

            // Asegurar que SÍ exista (la prueba pasa solo si está presente)
            Assert.IsTrue(existeInconsistencia, "No se encontró el mensaje de INCONSISTENCIA(S).");
        }
    }
}
