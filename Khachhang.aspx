<%@ Page Title="Khách hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Khachhang.aspx.cs" Inherits="MyWebsite.Khachhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="maKH" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="177px" AllowPaging="True" Height="117px">
        <EditItemTemplate>
            maKH:
            <asp:Label ID="maKHLabel1" runat="server" Text='<%# Eval("maKH") %>' />
            <br />
            TenKH:
            <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            maKH:
            <asp:TextBox ID="maKHTextBox" runat="server" Text='<%# Bind("maKH") %>' />
            <br />
            TenKH:
            <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            maKH:
            <asp:Label ID="maKHLabel" runat="server" Text='<%# Eval("maKH") %>' />
            <br />
            TenKH:
            <asp:Label ID="TenKHLabel" runat="server" Text='<%# Bind("TenKH") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=QLBH;Integrated Security=True" DeleteCommand="DELETE FROM [KhachHang] WHERE [maKH] = @maKH" InsertCommand="INSERT INTO [KhachHang] ([maKH], [TenKH], [email]) VALUES (@maKH, @TenKH, @email)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [maKH], [TenKH], [email] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [email] = @email WHERE [maKH] = @maKH">
        <DeleteParameters>
            <asp:Parameter Name="maKH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="maKH" Type="Int32" />
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="maKH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
