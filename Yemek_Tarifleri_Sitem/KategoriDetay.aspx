<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


    .auto-style27 {
        height: 25px;
        text-align: center;
        width: 561px;
    }
        .auto-style30 {
            width: 100%;
            font-size: x-large;
            color: #FF9900;
        }
    .auto-style25 {
        height: 25px;
        width: 561px;
    }
    .auto-style28 {
        background-color: #7FFFD4;
        height: 23px;
        width: 561px;
    }
    .auto-style29 {
        background-color: #7FFFD4;
        width: 561px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="562px">
        <ItemTemplate>
            <table class="auto-style21">
                <tr>
                    <td class="auto-style27"><strong>
                        <br />
                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style30" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a>
                        <br />
                    &nbsp;<br /></strong></td>
                </tr>
                <tr>
                    <td class="auto-style25"><span class="auto-style18"><strong>Malzemeler</strong></span>:<asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style28"><span class="auto-style18"><strong>Tarif:</strong></span><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29"><span class="auto-style18">Tarih</span>:<em>&nbsp;
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <span class="auto-style18">Puan: </span>&nbsp; </em>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #FF9900">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

