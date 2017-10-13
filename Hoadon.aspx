<%@ Page Title="Hóa đơn" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hoadon.aspx.cs" Inherits="MyWebsite.Hoadon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaHD" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="163px">
        <EditItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            MaKH:
            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            MaKH:
            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            MaKH:
            <asp:Label ID="MaKHLabel" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=QLBH;Integrated Security=True" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [MaKH]) VALUES (@MaHD, @MaKH)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaHD], [MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaKH] = @MaKH WHERE [MaHD] = @MaHD">
        <DeleteParameters>
            <asp:Parameter Name="MaHD" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHD" Type="String" />
            <asp:Parameter Name="MaKH" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="MaHD" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
