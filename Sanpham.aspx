<%@ Page Title="Sản phẩm" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sanpham.aspx.cs" Inherits="sanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 406px;
        }
        .auto-style2 {
            width: 450px;
            height: 389px;
        }
        .auto-style3 {
            width: 567px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <table class="nav-justified">
        <tr>
            <td class="auto-style3">
                <img alt="car8" class="auto-style2" src="image/car8.jpg" /></td>
            <td class="auto-style1">
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" Width="227px">
                    <EditItemTemplate>
                        Mã SP:
                        <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
                        <br />
                        Mã loại SP:
                        <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
                        <br />
                        Loại:
                        <asp:TextBox ID="LoaiTextBox" runat="server" Text='<%# Bind("Loai") %>' />
                        <br />
                        Tên:
                        <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
                        <br />
                        Giá:
                        <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                        <br />
                        Mô tả:
                        <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Mã SP:
                        <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                        <br />
                        Mã loại SP:
                        <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
                        <br />
                        Loại:
                        <asp:TextBox ID="LoaiTextBox" runat="server" Text='<%# Bind("Loai") %>' />
                        <br />
                        Tên:
                        <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
                        <br />
                        Giá:
                        <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                        <br />
                        Mô tả:
                        <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Mã SP:
                        <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                        <br />
                        Mã loại SP:
                        <asp:Label ID="MaLoaiSPLabel" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
                        <br />
                        Loại:
                        <asp:Label ID="LoaiLabel" runat="server" Text='<%# Bind("Loai") %>' />
                        <br />
                        Tên:
                        <asp:Label ID="TenLabel" runat="server" Text='<%# Bind("Ten") %>' />
                        <br />
                        Giá:
                        <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
                        <br />
                        Mô tả:
                        <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaLoaiSP], [Loai], [Ten], [Gia], [MoTa]) VALUES (@MaSP, @MaLoaiSP, @Loai, @Ten, @Gia, @MoTa)" SelectCommand="SELECT [MaSP], [MaLoaiSP], [Loai], [Ten], [Gia], [MoTa] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoaiSP] = @MaLoaiSP, [Loai] = @Loai, [Ten] = @Ten, [Gia] = @Gia, [MoTa] = @MoTa WHERE [MaSP] = @MaSP">
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
            </td>
        </tr>
    </table>

    </asp:Content>

