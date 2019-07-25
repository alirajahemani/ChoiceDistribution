<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
	<div style="height:200px;width:80%">
	<asp:AdRotator runat = "server" AdvertisementFile = "adfile.xml" Height="200px" Width="100%"  Target =  "_blank" />
</div>
	
</asp:Content>