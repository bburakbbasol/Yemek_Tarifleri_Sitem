<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDüzenle.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            height: 23px;
        }
        .auto-style26 {
            width: 200px;
        }
        .auto-style27 {
            height: 23px;
            width: 200px;
        }
        .auto-style28 {
            height: 23px;
            width: 200px;
            text-align: right;
            font-size: large;
        }
        .auto-style29 {
            width: 200px;
            text-align: right;
            font-size: large;
        }
        .auto-style30 {
            height: 23px;
            text-align: right;
        }
        .auto-style31 {
            font-weight: bold;
            color: #FFFFFF;
            margin-left: 38px;
            background-color: #0000CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><strong>Kategori Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="361px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28"><strong>&nbsp; &nbsp;Kategori Adet:</strong></td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox2" runat="server" Width="362px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28"><strong>Resim</strong></td>
            <td class="auto-style25">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="370px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style30"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="44px" OnClick="Button1_Click" Text="Güncelle" Width="153px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

