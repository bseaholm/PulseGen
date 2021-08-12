using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using StepperDLL;

namespace StepperDLL_Tester
{
    public partial class Form1 : Form
    {
        StepperUSB stepUSB;

        public Form1()
        {
            InitializeComponent();

            stepUSB = new StepperUSB();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            stepUSB.StepperSetCounts(10);
        }


    }
}
