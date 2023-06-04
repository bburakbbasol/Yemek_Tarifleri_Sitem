<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategorilerAdmin.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            height: 23px;
            width: 287px;
        }
        .auto-style26 {
            height: 23px;
            text-align: right;
        }
        .auto-style27 {
            margin-left: 0px;
        }
        .auto-style28 {
            height: 23px;
            width: 125px;
            text-align: right;
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
        .auto-style38 {
            width: 39px;
        }
        .auto-style39 {
            background-color: #FF0066;
            color: #FFFFFF;
        }
        .auto-style40 {
            font-size: xx-large;
            background-color: #FFFFFF;
        }
        .auto-style41 {
            margin-left: 0px;
            font-size: xx-large;
            background-color: #FFFFFF;
        }
        .auto-style43 {
            text-align: right;
        }
        .auto-style45 {
            width: 169px;
            text-align: right;
        }
        .auto-style46 {
            margin-left: 40px;
        }
        .auto-style47 {
            text-align: right;
            margin-left: 40px;
        }
        .auto-style48 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style34">
        <table class="auto-style24">
            <tr>
                <td class="auto-style30"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style40" Height="40px" OnClick="Button1_Click" Text="+" Width="40px" />
                    </strong></td>
                <td class="auto-style36"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style41" Height="40px" OnClick="Button2_Click" Text="-" Width="40px" />
                    </strong></td>
                <td class="auto-style35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="570px">
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style25">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style28">
                        <a href="KategorilerAdmin.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil"> <asp:Image ID="Image2" runat="server" CssClass="auto-style27" Height="45px" ImageUrl="~/Resimler/icons8-delete-64.png" Width="63px" /></a>
                        </td>
                        <td class="auto-style26">
                              <a href="KategoriDüzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>"> <asp:Image ID="Image3" runat="server" CssClass="auto-style27" Height="55px" ImageUrl="~/Resimler/icons8-update-100.png" Width="60px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style39" >
        <table class="auto-style24">
            <tr>
                <td class="auto-style36">
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style40" Height="40px" OnClick="Button6_Click" Text="+" Width="40px" />
                </td>
                <td class="auto-style38">
                    <asp:Button ID="Button7" runat="server" CssClass="auto-style40" Height="40px" OnClick="Button7_Click" Text="-" Width="40px" />
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KATEGORİ EKLE</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style24">
            <tr>
                <td class="auto-style45">Kategori Ad:</td>
                <td class="auto-style43">
                    <asp:TextBox ID="TextBox1" runat="server" Width="388px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style45">Kategori ikon:</td>
                <td class="auto-style46">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="395px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style47"><strong>
                    <asp:Button ID="btnekle" runat="server" CssClass="auto-style48" Height="33px" Text="Ekle" Width="136px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

