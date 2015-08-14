using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ClassLibrary1;

namespace UnitTestProject
{
    [TestClass]
    public class MyClassTest
    {
        [TestMethod]
        public void MyClassTestMethod()
        {
            MyClass myc = new MyClass(7);
            int start = myc.MyCount;
            start++;
            myc.UpTheCount();
            int end  = myc.MyCount;
            Assert.AreEqual(start, end, "Method working incorrectly");


        }
    }
}
