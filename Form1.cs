using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Adam_Asmaca
{
    public partial class Form1 : Form
    {
        int ekranSayisiIlk = 0;
        int ekranSayisiSon = 0;
        bool ekranTemzile = false;
        char secim;
        public Form1()
        {
            InitializeComponent();
        }

        private void btn1_Click(object sender, EventArgs e)
        {
            if(ekranTemzile)
            {
                ekranTemzile = false;
                lblEkran.Text = "";
            }

            if(lblEkran.Text=="0")
            {
                lblEkran.Text = "";
            }
            lblEkran.Text += "1";
        }

        private void btn2_Click(object sender, EventArgs e)
        {
            if (ekranTemzile)
            {
                ekranTemzile = false;
                lblEkran.Text = "";
            }

            if (lblEkran.Text == "0")
            {
                lblEkran.Text = "";
            }
            lblEkran.Text += "2";
        }

        private void btn3_Click(object sender, EventArgs e)
        {

            if (ekranTemzile)
            {
                ekranTemzile = false;
                lblEkran.Text = "";
            }
            if (lblEkran.Text == "0")
            {
                lblEkran.Text = "";
            }
            lblEkran.Text += "3";
        }

        private void btn4_Click(object sender, EventArgs e)
        {

            if (ekranTemzile)
            {
                ekranTemzile = false;
                lblEkran.Text = "";
            }
            if (lblEkran.Text == "0")
            {
                lblEkran.Text = "";
            }
            lblEkran.Text += "4";
        }

        private void btn5_Click(object sender, EventArgs e)
        {

            if (ekranTemzile)
            {
                ekranTemzile = false;
                lblEkran.Text = "";
            }
            if (lblEkran.Text == "0")
            {
                lblEkran.Text = "";
            }
            lblEkran.Text += "5";
        }

        private void btn6_Click(object sender, EventArgs e)
        {

            if (ekranTemzile)
            {
                ekranTemzile = false;
                lblEkran.Text = "";
            }
            if (lblEkran.Text == "0")
            {
                lblEkran.Text = "";
            }
            lblEkran.Text += "6";
        }

        private void btn7_Click(object sender, EventArgs e)
        {
            if (ekranTemzile)
            {
                ekranTemzile = false;
                lblEkran.Text = "";
            }
            if (lblEkran.Text == "0")
            {
                lblEkran.Text = "";
            }
            lblEkran.Text += "7";
        }

        private void btn8_Click(object sender, EventArgs e)
        {

            if (ekranTemzile)
            {
                ekranTemzile = false;
                lblEkran.Text = "";
            }
            if (lblEkran.Text == "0")
            {
                lblEkran.Text = "";
            }
            lblEkran.Text += "8";
        }

        private void btn9_Click(object sender, EventArgs e)
        {

            if(ekranTemzile)
            {
                ekranTemzile = false;
                lblEkran.Text = "";
            }
            if (lblEkran.Text == "0")
            {
                lblEkran.Text = "";
            }
            lblEkran.Text += "9";
        }

        private void btn0_Click(object sender, EventArgs e)
        {
            if (ekranTemzile)
            {
                ekranTemzile = false;
                lblEkran.Text = "";
            }
            if (lblEkran.Text == "0")
            {
                lblEkran.Text = "";
            }
            lblEkran.Text += "0";
        }

        private void btnC_Click(object sender, EventArgs e)
        {
            lblEkran.Text = "";
        }

        private void btnArti_Click(object sender, EventArgs e)
        {
            ekranSayisiIlk = int.Parse(lblEkran.Text);
            ekranTemzile = true;
            secim='+';

        }

        private void btnCarpi_Click(object sender, EventArgs e)
        {
            ekranSayisiIlk = int.Parse(lblEkran.Text);
            ekranTemzile = true;
            secim = 'X';
        }

        private void btnBolu_Click(object sender, EventArgs e)
        {
            ekranSayisiIlk = int.Parse(lblEkran.Text);
            ekranTemzile = true;
            secim = '/';
        }

        private void btnEksi_Click(object sender, EventArgs e)
        {
            ekranSayisiIlk = int.Parse(lblEkran.Text);
            ekranTemzile = true;
            secim = '-';
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void btnEsittir_Click(object sender, EventArgs e)
        {
            ekranSayisiSon = int.Parse(lblEkran.Text);
            ekranTemzile = true;
            int sonuc = 0;

            switch(secim)
            {
                case '+':sonuc = ekranSayisiIlk + ekranSayisiSon; break;
                case '-': sonuc = ekranSayisiIlk - ekranSayisiSon; break;
                case 'X': sonuc = ekranSayisiIlk * ekranSayisiSon; break;
                case '/': sonuc = ekranSayisiIlk / ekranSayisiSon; break;

                default:
                    break;

            }
            lblEkran.Text = sonuc.ToString();
            ekranTemzile = true;


        }
    }
}
