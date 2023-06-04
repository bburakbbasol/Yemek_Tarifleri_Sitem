<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>


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
            }
        .auto-style42 {
            height: 9px;
        }
        .auto-style43 {
            height: 23px;
            width: 238px;
            text-align: right;
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
                <td class="auto-style35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    
        <asp:DataList ID="DataList1" runat="server" Width="570px" >
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style43">
                            <a href="MesajDetay.aspx?id=<%# Eval("Mesajid")%>"><asp:Image ID="Image3" runat="server" CssClass="auto-style27" Height="55px" ImageUrl="~/Resimler/msj.png" Width="51px" /></a>
                        </td>
                        <td class="auto-style26">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("mesajAdSoyad") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    <div class="auto-style42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
    
    

 


    </asp:Content>

