﻿using MetroFramework.Forms;
using PSMS.Class;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PSMS
{
    public partial class frmPurchaseDetail : MetroForm
    {
        frmPurchaseFunction purFun;
        public frmPurchaseDetail()
        {
            InitializeComponent();
            btnNew.Visible = false;
            btnDel.Visible = false;
            btnSave.Visible = false;

            purFun = new frmPurchaseFunction();
        }

        private void frmPurchaseDetail_Load(object sender, EventArgs e)
        {
            purFun.FillDataGridView(ref dgData);
        }

        private void metroTile1_Click(object sender, EventArgs e)
        {
            try
            {
                frmPayment frmpay = new frmPayment();
                frmpay.ShowDialog();

                DataGridViewCellCollection selectrow_cell = dgData.SelectedRows[0].Cells;
                double newpay;

                try
                {
                    newpay = double.Parse(frmpay.pay);
                }
                catch (Exception)
                {
                    newpay = 0;
                }

                double oldpay = double.Parse(dgData.SelectedRows[0].Cells[5].Value + "");
                double balance = double.Parse(selectrow_cell[3].Value + "");
                if (newpay >= balance)
                {
                    Connection.ExecuteScalar("Update Purchase set Balance=0,Payment=TotalPrice where PurCode='" + selectrow_cell[0].Value + "'");
                    if (newpay > balance)
                    {
                        MessageBox.Show("U must Change Back : " + Environment.NewLine + (newpay - balance) + " $");
                    }
                    else
                    {
                        double newpayment, newbalance;
                        newbalance = balance - newpay;
                        newpayment = newpay + oldpay;
                        Connection.ExecuteScalar("Update Purchase set Balance='" + newbalance + "',Payment='" + newpayment + "' where PurCode='" + selectrow_cell[0].Value + "'");

                        frmPurchaseDetail_Load(this, null);
                    }
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
