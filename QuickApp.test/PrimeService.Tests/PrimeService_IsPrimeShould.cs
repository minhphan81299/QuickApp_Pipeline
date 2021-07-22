using Xunit;
using System;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;
using Allure.Commons;
using Allure.Xunit;
using Allure.XUnit;
using Allure.Xunit.Attributes;
using Prime.Services;

namespace Prime.UnitTests.Services
{   
    public class PrimeService_IsPrimeShould: IDisposable
    {   
        public void Dispose()
        {
        }
        public void ExampleUnitTests()
        {
            Environment.CurrentDirectory = Path.GetDirectoryName(GetType().Assembly.Location);
            
        }
        [AllureXunit]
        [AllureTag("CI")]
        [AllureSeverity(SeverityLevel.critical)]
        [AllureSubSuite("check")]
        public void IsPrime_InputIs1_ReturnFalse()
        {
            var primeService = new PrimeService();
            bool result = primeService.IsPrime(1);

            Assert.False(result, "1 should not be prime");
        }
        [AllureXunit]
        [AllureTag("CI")]
        [AllureSeverity(SeverityLevel.critical)]
        [AllureSubSuite("check")]
        public void IsPrime_InputIs0_ReturnFalse()
        {
            var primeService = new PrimeService();
            bool result = primeService.IsPrime(0);

            Assert.False(result, "0 should not be prime");
        }
        // [Theory]
        // [InlineData(-1)]
        // [InlineData(0)]
        // [InlineData(1)]
        // public void IsPrime_ValuesLessThan2_ReturnFalse(int value)
        // {
        //     var _primeService = new PrimeService();
        //     var result = _primeService.IsPrime(value);

        //     Assert.False(result, $"{value} should not be prime");
        // }
    }
}