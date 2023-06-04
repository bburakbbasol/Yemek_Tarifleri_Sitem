<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="gununyem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style18 {
        width: 99%;
    }
    .auto-style20 {
        height: 30px;
        text-align: center;
    }
    .auto-style21 {
        text-align: center;
    }
    .auto-style19 {
        font-size: x-large;
    }
    .auto-style22 {
        margin-right: 0px;
            margin-bottom: 0px;
        }
        .auto-style23 {
            height: 23px;
        }
        .auto-style24 {
            color: #000000;
        }
        .auto-style25 {
            height: 23px;
            text-align: left;
        }
        .auto-style28 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style18">
            <tr>
                <td class="auto-style20"><strong>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style19" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Malzemeler:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>' CssClass="auto-style24"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Tarif:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>' CssClass="auto-style24"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Image ID="Image1" runat="server" Height="226px" Width="402px" ImageUrl='<%# Eval("YemekResim") %>' />
                </td>
            </tr>
            <tr>
                <td><strong>Puan:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style24"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Tarih:</strong><em><asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style24"></asp:Label>
                    </em>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

