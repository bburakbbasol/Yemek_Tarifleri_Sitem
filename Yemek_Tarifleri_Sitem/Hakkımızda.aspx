<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkımızda.aspx.cs" Inherits="Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style25 {
            font-size: large;
            color: #FF9900;
        }
        .auto-style27 {
            height: 111px;
        }
        .auto-style26 {
            margin-left: 0px;
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style25">
        HAKKIMIZDA</p>
    <p>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <div class="auto-style27">
        <asp:Image ID="Image1" runat="server" CssClass="auto-style26" Height="138px" ImageUrl="~/Resimler/loop-email-team-collaboration-meeting-1500x500.jpg" Width="575px" />
    </div>
</asp:Content>

