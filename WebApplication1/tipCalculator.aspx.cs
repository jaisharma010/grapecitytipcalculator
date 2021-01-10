using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    interface calculation
    {
       void calculation();
    }
    interface currency
    {
        void currency();
    }
    public abstract partial class tipCalculator : System.Web.UI.Page,calculation,currency
    {
       public int ptip,bill, tip, person,error=0; //global integer values
       public string curr; //global string values

        public void tip_Calculator(object sender, EventArgs e)
        {
            //Input checked for wrong data values
            try
            {
                bill = Convert.ToInt32(TextBox1.Text);
                tip = Convert.ToInt32(TextBox2.Text);
                person = Convert.ToInt32(TextBox3.Text);
                curr = DropDownList1.SelectedValue; //currency choosen by user
            }
            catch
            {
                //flag for any error
                error = 1;
                if (error == 1)
                {
                    Label6.Text = "Please enter valid data!";      //error messsage
                    Label6.Enabled = true;
                    error = 0;
                }
                return ; //stoping process after error is found
            }
            if (bill <= 0)
            {
                Label6.Text = "BIll amount should be more than 0"; //error messsage
                return; //stoping process after error is found
            }
            if (error == 0)
                Label6.Text = null;

            if (tip < 0)
            {
                Label6.Text = "Tip cannot be less than 0%";  //error messsage
                return; //stoping process after error is found
            }

            if (person <= 0)
            {
                Label6.Text = "Number of persons cannot be 0"; //error messsage
                return ; //stoping process after error is found
            }
            currency();
         //calling function to choosing appropriate currency
        }
        public void currency()
        {
            switch (curr) //deciding which currency symbol to use
            {
                case "INR":
                    curr = "\u20B9";
                    break;

                case "Eu":
                    curr = "\u20AC";
                    break;
                case "US":
                    curr = "$";
                    break;
                case "SD":
                    curr = "$";
                    break;
                default:
                    curr = "default called";
                    break;
            }
            calculation(); //calling calculation method
        }
        public void calculation()
        {
            ptip = ((bill * tip) / 100) / person; //calculating tip per person
            TextBox4.Text = curr + (ptip.ToString()); //printing tip per person, also concatinating currency symbol
            TextBox5.Text = curr + ((bill / person) + ptip).ToString(); //printing total bill per person including tip
        }
    }
}