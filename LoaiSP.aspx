<%@ Page Title="Loại sản phẩmm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoaiSP.aspx.cs" Inherits="MyWebsite.LoaiSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaLoaiSP" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="161px">
        <EditItemTemplate>
            MaLoaiSP:
            <asp:Label ID="MaLoaiSPLabel1" runat="server" Text='<%# Eval("MaLoaiSP") %>' />
            <br />
            TenLoai:
            <asp:TextBox ID="TenLoaiTextBox" runat="server" Text='<%# Bind("TenLoai") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            MaLoaiSP:
            <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            TenLoai:
            <asp:TextBox ID="TenLoaiTextBox" runat="server" Text='<%# Bind("TenLoai") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaLoaiSP:
            <asp:Label ID="MaLoaiSPLabel" runat="server" Text='<%# Eval("MaLoaiSP") %>' />
            <br />
            TenLoai:
            <asp:Label ID="TenLoaiLabel" runat="server" Text='<%# Bind("TenLoai") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=QLBH;Integrated Security=True" DeleteCommand="DELETE FROM [LoaiSP] WHERE [MaLoaiSP] = @MaLoaiSP" InsertCommand="INSERT INTO [LoaiSP] ([MaLoaiSP], [TenLoai]) VALUES (@MaLoaiSP, @TenLoai)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaLoaiSP], [TenLoai] FROM [LoaiSP]" UpdateCommand="UPDATE [LoaiSP] SET [TenLoai] = @TenLoai WHERE [MaLoaiSP] = @MaLoaiSP">
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
</asp:Content>
