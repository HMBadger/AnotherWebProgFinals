using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnotherWebProgFinals.User
{
    public partial class legislation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttnpdf_Click(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/2015-MUNICIPAL-ORDINANCE-No.-15-02.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void bttnpdf_Click1(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/2015-MUNICIPAL-ORDINANCE-No.-15-01.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void bttnpdf_Click2(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/General-Trias-Sports-Complex-Cultural-and-Convention-Center-and-Sports-Park-Rates-Fees-Ordinance.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void bttnpdf_Click3(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/MUNICIPAL-ORDINANCE-No.-13-12.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void bttnpdf_Click4(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/MUNICIPAL-ORDINANCE-No.-13-13.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void bttnpdf_Click5(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/Municipal-Ordinance-No.-14-01.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void bttnpdf_Click6(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/Municipal-Ordinance-No.-14-02.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void bttnpdf_Click7(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/Municipal-Ordinance-No.-14-03.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void bttnpdf_Click8(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/Municipal-Ordinance-No.-14-04.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void bttnpdf_Click9(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/Municipal-Ordinance-No.-14-05.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void bttnpdf_Click10(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/Municipal-Ordinance-No.-14-07.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void bttnpdf_Click11(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath("../pdf_files/Municipal-Ordinance-No.-14-101.pdf");
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
    }
}