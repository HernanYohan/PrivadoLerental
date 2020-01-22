<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PrivadoInmobiliaria.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<%@ Register assembly="DevExpress.Web.v15.2, Version=15.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 643px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 643px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 643px" rowspan="5">
                <dx:ASPxImage ID="ASPxImage1" runat="server" Height="111px" ImageUrl="~/logo.jpg" ShowLoadingImage="true" Width="281px">
                </dx:ASPxImage>
            </td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">
                <asp:Label ID="Label1" runat="server" Text="Cuenta:"></asp:Label>
            </td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                <dx:ASPxTextBox ID="username" runat="server" Width="120px">
                </dx:ASPxTextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Campo requerido" ForeColor="#3366CC" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">&nbsp;</td>
        </tr>
        <tr>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">
                <asp:Label ID="Label7" runat="server" Text="Clave:"></asp:Label>
            </td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                <dx:ASPxTextBox ID="password" runat="server" Password="True" Width="120px">
                </dx:ASPxTextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Campo requerido" ForeColor="#3366CC" ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 643px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Ingresar" Theme="Office2010Blue" Width="120px" ValidationGroup="v1" OnClick="ASPxButton1_Click">
                </dx:ASPxButton>
            </td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 643px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
       <%-- <tr>
            <td style="width: 793px"><!-- DolarWeb Start --><div id="DolarCO3"><h2><a href="https://dolar.wilkinsonpc.com.co/"></a></h2><a href="https://dolar.wilkinsonpc.com.co/indicadores-economicos-dolar.html"></a></div><script type="text/javascript" src="https://dolar.wilkinsonpc.com.co/widgets/gratis/dolar-cop-usd-3.js"></script><!-- DolarWeb End --></td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>--%>
        <tr>
            <td style="width: 643px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 643px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 643px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 643px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 643px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 643px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 643px">
                <asp:Label ID="Label8" runat="server" Text="Version: 1.c 16.10.19"></asp:Label>
            </td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 374px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 120px">&nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
            <td class="dxeTextBoxDefaultWidthSys" style="width: 930px">
                &nbsp;</td>
        </tr>
       </table>

</asp:Content>

