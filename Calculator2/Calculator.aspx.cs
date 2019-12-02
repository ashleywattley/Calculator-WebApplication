using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator2
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var num1 = Convert.ToDecimal(this.txtNumber1.Text);
            var num2 = Convert.ToDecimal(this.txtNumber2.Text);
            var optr = this.DropDownList1.SelectedValue;
            var eror = Convert.ToString(this.lblError.Text);
            string box_msg = "Please Use A Non-Zero Devisor";
            string box_lbl = "Calculation Error";
           
            var result = 0m;



            if (optr == "+")
            {
                result = num1 + num2;
            }
            else if (optr == "-")
            {
                result = num1 - num2;
            }
            else if (optr == "*")
            {
                result = num1 * num2;
            }
            lblResult.Text = result.ToString();
            {


                if (optr == "/")
                    try
                {
                    result = num1 / num2;

                }

             
                catch (DivideByZeroException)
                {
                    System.Windows.Forms.MessageBox.Show(box_msg,box_lbl);
                }
                lblResult.Text = result.ToString();



            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var mpg = Convert.ToDecimal(this.txtMpg.Text);
                var miles = Convert.ToDecimal(this.txtMilage.Text);
            var costPerLitre = Convert.ToDecimal(this.txtCostLitre.Text);
            var gallons = miles / mpg;
                var litres = gallons * 4.54609m;
               
                var cost = litres * costPerLitre;

            lblCalculate.Text = litres.ToString("#.##");
            lblFuelCost.Text = cost.ToString("£#.##");
                
         
        }
    }
}

