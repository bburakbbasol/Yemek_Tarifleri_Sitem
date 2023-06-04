<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkımızdaAdmin.aspx.cs" Inherits="HakkımızdaAdmin" %>

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
        .auto-style42 {
        margin-left: 80px;
    }
    .auto-style43 {
        width: 86%;
    }
    .auto-style44 {
        text-align: right;
        height: 51px;
    }
    .auto-style45 {
        font-size: large;
        color: #FFFFFF;
        background-color: #0033CC;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style34">
        <table class="auto-style24">
            <tr>
                <td class="auto-style30"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style40" Height="40px"  Text="+" Width="40px" />
                    </strong></td>
                <td class="auto-style36"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style41" Height="40px"  Text="-" Width="40px" />
                    </strong></td>
                <td class="auto-style35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <table class="auto-style43">
        <tr>
            <td class="auto-style42">
                <asp:TextBox ID="TextBox1" runat="server" Height="228px" TextMode="MultiLine" Width="561px"></asp:TextBox>
            </td>
        </tr>
</table>
<table class="auto-style24">
    <tr>
        <td class="auto-style44"><strong>
            <asp:Button ID="Button3" runat="server" CssClass="auto-style45" Height="47px" Text="Güncelle" Width="139px" OnClick="Button3_Click" />
            </strong></td>
    </tr>
</table>
    <br />
</asp:Content>

