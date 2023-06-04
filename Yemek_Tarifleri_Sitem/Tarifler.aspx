<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style34 {
            background-color: #FF0066;
        }
        .auto-style24 {
            width: 100%;
        }
        .auto-style30 {
            width: 42px;
        }
        .auto-style40 {
            font-size: xx-large;
            background-color: #FFFFFF;
        }
        .auto-style36 {
            width: 41px;
        }
        .auto-style41 {
            margin-left: 0px;
            font-size: xx-large;
            background-color: #FFFFFF;
        }
        .auto-style35 {
            color: #FFFFFF;
            text-align: left;
        }
        .auto-style26 {
            height: 23px;
            text-align: right;
        }
        .auto-style43 {
            height: 23px;
            width: 307px;
            text-align: left;
        }
        .auto-style27 {
            margin-left: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style34">
        <table class="auto-style24">
            <tr>
                <td class="auto-style30"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style40" Height="40px"  Text="+" Width="40px" OnClick="Button1_Click"   />
                    </strong></td>
                <td class="auto-style36"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style41" Height="40px" Text="-" Width="40px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ONAY BEKLEYEN TARİF ÖNERİ&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
  
    
        <asp:DataList ID="DataList1" runat="server" Width="570px" >
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style43">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style26">
                           <a href="TarifOnerDetay.aspx?tid=<%#Eval("Tarifid") %>"> <asp:Image ID="Image3" runat="server" CssClass="auto-style27" Height="55px" ImageUrl="~/Resimler/recccccc.png" Width="80px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
      <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    </div>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style34">
        <table class="auto-style24">
            <tr>
                <td class="auto-style30"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style40" Height="40px"  Text="+" Width="40px" OnClick="Button3_Click"   />
                    </strong></td>
                <td class="auto-style36"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style41" Height="40px" Text="-" Width="40px" OnClick="Button4_Click"   />
                    </strong></td>
                <td class="auto-style35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ONAYLANMIŞ TARİF ÖNERİ&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    

 


    <asp:DataList ID="DataList2" runat="server" Width="570px">
        <ItemTemplate>
            <table class="auto-style24">
                <tr>
                    <td class="auto-style43">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style26"><a href='TarifOnerDetay.aspx?tid=<%#Eval("Tarifid") %>'>
                        <asp:Image ID="Image3" runat="server" CssClass="auto-style27" Height="55px" ImageUrl="~/Resimler/recccccc.png" Width="80px" />
                        </a></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    

 


    </asp:Content>


