<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>
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
        .auto-style49 {
            text-align: left;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style34">
        <table class="auto-style24">
            <tr>
                <td class="auto-style30"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style40" Height="40px"  Text="+" Width="40px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style36"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style41" Height="40px" Text="-" Width="40px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="570px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style25">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style28">
                        <a href="Yemekler.aspx?Yemekid=<%#Eval("yemekid") %>&islem=sil"> <asp:Image ID="Image2" runat="server" CssClass="auto-style27" Height="45px" ImageUrl="~/Resimler/icons8-delete-64.png" Width="63px" /></a>
                        </td>
                        <td class="auto-style26">
                              <a href="YemekDüzenle.aspx?Yemekid=<%#Eval("Yemekid") %>"> <asp:Image ID="Image3" runat="server" CssClass="auto-style27" Height="55px" ImageUrl="~/Resimler/icons8-update-100.png" Width="60px" /></a>
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
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style40" Height="40px" Text="+" Width="40px" OnClick="Button6_Click" />
                </td>
                <td class="auto-style38">
                    <asp:Button ID="Button7" runat="server" CssClass="auto-style40" Height="40px"  Text="-" Width="40px" OnClick="Button7_Click" />
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YEMEK EKLE</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style24">
            <tr>
                <td class="auto-style45"><strong>Yemek Ad:</strong></td>
                <td class="auto-style43">
                    <asp:TextBox ID="TextBox1" runat="server" Width="388px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style45"><strong>&nbsp;Malzemeler:</strong></td>
                <td class="auto-style46">
                    <asp:TextBox ID="TextBox2" runat="server" Height="98px" TextMode="MultiLine" Width="388px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style45"><strong>Yemek Tarif:</strong></td>
                <td class="auto-style47">
                    <asp:TextBox ID="TextBox3" runat="server" Height="134px" TextMode="MultiLine" Width="388px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style45"><strong>Kategori:</strong></td>
                <td class="auto-style49">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style27" Width="388px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style47"><strong>
                    <asp:Button ID="btnekle" runat="server" CssClass="auto-style48" Height="33px" OnClick="btnekle_Click" Text="Ekle" Width="136px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

