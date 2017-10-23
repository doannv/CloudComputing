<%@ Page Title="Liên hệ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Điện toán đám mây.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone: 0166.7777.8888</h3>
        </header>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <h3>
            <span>Nguyễn Văn Đoàn:</span>
            <span><a href="mailto:Support@example.com">Support@example.com</a></span>
        </h3>
        <h3>
            <span>Ngô Trọng Nghĩa:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
        </h3>
        <h3>
            <span>Lê Hoài Nam:</span>
            <span><a href="mailto:General@example.com">Marketing@example.com</a></span>
        </h3>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <h2>
           Fpt Polytechnic Hà Nội<br />         
        </h2>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.928280611915!2d105.7631010145048!3d21.035555485994678!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b92bd71f9b%3A0xb79f074fe43dcfc1!2zRlBUIFBvbHl0ZWNobmljIChDxqEgc-G7nyBIw6AgTuG7mWkp!5e0!3m2!1svi!2s!4v1507966551638" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </section>
</asp:Content>