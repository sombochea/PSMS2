﻿using MetroFramework.Forms;
using PSMS.Reports;
using System.Collections.Generic;
using System.Windows.Forms;

namespace PSMS
{
    public partial class reportViewer : MetroForm
    {
        public reportViewer()
        {
            InitializeComponent();
        }

        public reportViewer(List<Class.reportInvoice> reportInvoice)
        {
            InitializeComponent();
            Class.FullMode.Fullscreen(this);

            invoiceReportDoc.SetDataSource(reportInvoice);

            crystalReportViewer1.ReportSource = invoiceReportDoc;
        }

        public reportViewer(List<Class.reportEmployee> reportEmployee)
        {
            InitializeComponent();
            Class.FullMode.Fullscreen(this);

            employeeReportDoc.SetDataSource(reportEmployee);
            crystalReportViewer1.ReportSource = employeeReportDoc;
        }

        public reportViewer(List<Class.reportCustomer> reportCustomer)
        {
            InitializeComponent();
            Class.FullMode.Fullscreen(this);

            customerReportDoc.SetDataSource(reportCustomer);
            crystalReportViewer1.ReportSource = customerReportDoc;
        }

        public reportViewer(List<Class.reportProduct> reportProduct)
        {
            InitializeComponent();
            Class.FullMode.Fullscreen(this);

            productReportDoc.SetDataSource(reportProduct);
            crystalReportViewer1.ReportSource = productReportDoc;
        }

        public reportViewer(List<Class.reportPurchaseRenew> reportPurchase)
        {
            InitializeComponent();
            Class.FullMode.Fullscreen(this);

            purchaseReportD.SetDataSource(reportPurchase);
            crystalReportViewer1.ReportSource = purchaseReportD;
        }

        public reportViewer(List<Class.reportSupplierRenew> reportSupplier)
        {
            InitializeComponent();
            Class.FullMode.Fullscreen(this);

            supplierReportDoc.SetDataSource(reportSupplier);
            crystalReportViewer1.ReportSource = supplierReportDoc;
        }
       
        private void reportViewer_FormClosing(object sender, FormClosingEventArgs e)
        {
            
        }
    }
}
