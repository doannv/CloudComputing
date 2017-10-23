<%@ Page Title="Loại sản phẩm" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="loaisp.aspx.cs" Inherits="loaisp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 740px;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            width: 450px;
            height: 389px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <img alt="car 8" class="auto-style2" src="image/car8.jpg" /></td>
            <td>
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaLoaiSP" DataSourceID="SqlDataSource2" Width="204px">
                    <EditItemTemplate>
                        Mã loại SP:
                        <asp:Label ID="MaLoaiSPLabel1" runat="server" Text='<%# Eval("MaLoaiSP") %>' />
                        <br />
                        Tên loại:
                        <asp:TextBox ID="TenLoaiTextBox" runat="server" Text='<%# Bind("TenLoai") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Mã loại SP:
                        <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
                        <br />
                        Tên loại:
                        <asp:TextBox ID="TenLoaiTextBox" runat="server" Text='<%# Bind("TenLoai") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Mã loại SP:
                        <asp:Label ID="MaLoaiSPLabel" runat="server" Text='<%# Eval("MaLoaiSP") %>' />
                        <br />
                        Tên loại:
                        <asp:Label ID="TenLoaiLabel" runat="server" Text='<%# Bind("TenLoai") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LoaiSP] WHERE [MaLoaiSP] = @MaLoaiSP" InsertCommand="INSERT INTO [LoaiSP] ([MaLoaiSP], [TenLoai]) VALUES (@MaLoaiSP, @TenLoai)" SelectCommand="SELECT [MaLoaiSP], [TenLoai] FROM [LoaiSP]" UpdateCommand="UPDATE [LoaiSP] SET [TenLoai] = @TenLoai WHERE [MaLoaiSP] = @MaLoaiSP">
                    <DeleteParameters>
                        <asp:Parameter Name="MaLoaiSP" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MaLoaiSP" Type="Int32" />
                        <asp:Parameter Name="TenLoai" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TenLoai" Type="String" />
                        <asp:Parameter Name="MaLoaiSP" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

