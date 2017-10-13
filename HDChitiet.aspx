<%@ Page Title="Hóa đơn chi tiết" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HDChitiet.aspx.cs" Inherits="MyWebsite.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="169px">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            MaSP:
            <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            id:
            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
            <br />
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            MaSP:
            <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            MaHD:
            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            MaSP:
            <asp:Label ID="MaSPLabel" runat="server" Text='<%# Bind("MaSP") %>' />
            <br />
            SoLuong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=QLBH;Integrated Security=True" DeleteCommand="DELETE FROM [ChiTietHD] WHERE [id] = @id" InsertCommand="INSERT INTO [ChiTietHD] ([id], [MaHD], [MaSP], [SoLuong]) VALUES (@id, @MaHD, @MaSP, @SoLuong)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [MaHD], [MaSP], [SoLuong] FROM [ChiTietHD]" UpdateCommand="UPDATE [ChiTietHD] SET [MaHD] = @MaHD, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="MaHD" Type="String" />
            <asp:Parameter Name="MaSP" Type="Int32" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaHD" Type="String" />
            <asp:Parameter Name="MaSP" Type="Int32" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
