<%@ Page Title="Sản phẩm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sanpham.aspx.cs" Inherits="MyWebsite.Sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaSP" DataSourceID="SqlDataSource2" GridLines="Vertical" Width="175px">
        <EditItemTemplate>
            MaSP:
            <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            MaLoaiSP:
            <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            Loai:
            <asp:TextBox ID="LoaiTextBox" runat="server" Text='<%# Bind("Loai") %>' />
            <br />
            Ten:
            <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
            <br />
            Gia:
            <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
            MoTa:
            <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            MaSP:
            <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
            <br />
            MaLoaiSP:
            <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            Loai:
            <asp:TextBox ID="LoaiTextBox" runat="server" Text='<%# Bind("Loai") %>' />
            <br />
            Ten:
            <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
            <br />
            Gia:
            <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
            MoTa:
            <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaSP:
            <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            MaLoaiSP:
            <asp:Label ID="MaLoaiSPLabel" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            Loai:
            <asp:Label ID="LoaiLabel" runat="server" Text='<%# Bind("Loai") %>' />
            <br />
            Ten:
            <asp:Label ID="TenLabel" runat="server" Text='<%# Bind("Ten") %>' />
            <br />
            Gia:
            <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
            MoTa:
            <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.;Initial Catalog=QLBH;Integrated Security=True" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaLoaiSP], [Loai], [Ten], [Gia], [MoTa]) VALUES (@MaSP, @MaLoaiSP, @Loai, @Ten, @Gia, @MoTa)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaSP], [MaLoaiSP], [Loai], [Ten], [Gia], [MoTa] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoaiSP] = @MaLoaiSP, [Loai] = @Loai, [Ten] = @Ten, [Gia] = @Gia, [MoTa] = @MoTa WHERE [MaSP] = @MaSP">
        <DeleteParameters>
            <asp:Parameter Name="MaSP" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSP" Type="Int32" />
            <asp:Parameter Name="MaLoaiSP" Type="Int32" />
            <asp:Parameter Name="Loai" Type="String" />
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="MoTa" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaLoaiSP" Type="Int32" />
            <asp:Parameter Name="Loai" Type="String" />
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="MaSP" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
