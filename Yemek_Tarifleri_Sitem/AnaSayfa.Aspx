<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.Aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style21 {
        width: 103%;
    }
    .auto-style22 {
        height: 23px;
    }
    .auto-style23 {
        font-size: x-large;
        color: #FF9900;
    }
    .auto-style25 {
        height: 25px;
    }
    .auto-style27 {
        height: 25px;
        text-align: center;
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
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style23" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style25"><span class="auto-style18"><strong>Malzemeler</strong></span>:<asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><span class="auto-style18"><strong>Tarif:</strong></span><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><span class="auto-style18">Tarih</span>:<em>&nbsp;
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <span class="auto-style18">Puan: </span>&nbsp; </em>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style22" style="border-bottom-style: dotted; border-bottom-width: medium; border-bottom-color: #FF00FF">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

