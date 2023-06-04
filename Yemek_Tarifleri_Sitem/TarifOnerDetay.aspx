<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            width: 160px;
            text-align: right;
            font-size: medium;
        }
        .auto-style26 {
            width: 160px;
            text-align: right;
            height: 23px;
            font-size: medium;
        }
        .auto-style27 {
            height: 23px;
        }
        .auto-style28 {
            text-align: right;
        }
        .auto-style29 {
            font-size: large;
            color: #FFFFFF;
            margin-left: 0px;
            background-color: #000099;
        }
        .auto-style30 {
            width: 160px;
            text-align: right;
            font-size: medium;
            height: 26px;
        }
        .auto-style31 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style25"><strong></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Tarif Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="408px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Tarif Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="55px" TextMode="MultiLine" Width="408px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="408px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="412px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Tarif Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="415px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="408px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style30"><strong>Öneren Mail:</strong></td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Email" Width="408px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong></strong></td>
            <td class="auto-style28"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style29" Height="36px" OnClick="Button1_Click" Text="Onayla" Width="140px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style26"><strong></strong></td>
            <td class="auto-style27"></td>
        </tr>
    </table>
</asp:Content>

