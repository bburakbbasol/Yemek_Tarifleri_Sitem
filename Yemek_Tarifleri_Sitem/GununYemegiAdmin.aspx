<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            height: 23px;
            width: 352px;
        }
        .auto-style26 {
            height: 23px;
            text-align: right;
        }
        .auto-style27 {
            margin-left: 0px;
        }
        .auto-style30 {
            width: 42px;
        }
        .auto-style34 {
            background-color: #FF0066;
        }
        .auto-style35 {
            color: #FFFFFF;
            text-align: left;
        }
        .auto-style36 {
            width: 41px;
        }
        .auto-style37 {
            font-size: xx-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style34">
        <table class="auto-style24">
            <tr>
                <td class="auto-style30"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style37" Height="39px" OnClick="Button3_Click" Text="+" Width="42px" />
                    </strong></td>
                <td class="auto-style36"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style37" Height="37px" OnClick="Button4_Click" Text="-" Width="41px" />
                    </strong></td>
                <td class="auto-style35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YEMEKLER</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="570px">
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style25">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style26">
                              <a href="YemekDüzenle.aspx?Yemekid=<%#Eval("Yemekid") %>"> <asp:Image ID="Image3" runat="server" CssClass="auto-style27" Height="55px" ImageUrl="~/Resimler/check.png" Width="60px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
    </asp:Panel>
</asp:Content>

