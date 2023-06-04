<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style25 {
        font-size: xx-large;
            color: #FF9900;
        }
        .auto-style30 {
            text-align: center;
        }
        .auto-style31 {
            font-size: large;
        }
        .auto-style32 {
            font-size: medium;
        }
        .auto-style33 {
            height: 30px;
        }
        .auto-style34 {
            font-size: x-small;
        }
        .auto-style36 {
            height: 23px;
            text-align: left;
        }
        .auto-style37 {
            height: 23px;
            text-align: right;
        }
        .auto-style38 {
            background-color: #CCFFFF;
        }
        .auto-style40 {
            width: 111px;
            height: 26px;
            text-align: right;
        }
        .auto-style41 {
            height: 26px;
            text-align: left;
        }
        .auto-style43 {
            width: 111px;
            height: 30px;
        }
        .auto-style44 {
            height: 30px;
            text-align: right;
        }
        .auto-style46 {
            width: 111px;
            text-align: right;
        }
        .auto-style47 {
            height: 30px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <strong>
    <table class="auto-style23">
        <tr>
            <td class="auto-style30">    
<asp:Label ID="Label4" runat="server" CssClass="auto-style25" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    &nbsp;</strong><asp:DataList ID="DataList2" runat="server" Width="565px">
        <ItemTemplate>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style33">
                        <strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style31" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                </strong>
                <tr>
                    <td class="auto-style47">
                        <asp:Image ID="Image2" runat="server" Height="221px" ImageUrl='<%# Eval("YemekResim") %>' Width="362px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36">
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style32" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style37" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #FF9900"><strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style34" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </strong></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
    <div class="auto-style30">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style38" Height="26px">
        <strong>YORUM YAPMA PANELİ</strong></asp:Panel>
    </div>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style23">
            <tr>
                <td class="auto-style40"><strong>Adı Soyadı</strong></td>
                <td class="auto-style41">
                    <asp:TextBox ID="TextBox1" runat="server" Width="441px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style46"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" TextMode="Email" Width="440px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style46"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="117px" TextMode="MultiLine" Width="443px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style43"></td>
                <td class="auto-style44"><strong>
                    <em>
                    <asp:Button ID="Button1" runat="server" CssClass="tb5" Height="40px" OnClick="Button1_Click" Text="Yorum Yap" Width="128px" />
                    </em>
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>

