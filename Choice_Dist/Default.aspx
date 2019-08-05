<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <br />
    <div style="float:left;width:600px;top:auto">
         <p>
            <b>Below is the list of company that we majorly deal in:</b>
             <ul>
                 <li>Snapple</li>
                 <li>Pop</li>
                 <li>Calypso</li>
                 <li>Hanks</li>
                 <li>Oh Yeah!</li>
                 <li>Ptron</li>
                 <li>Cottage Country</li>
                 <li>Fritolay</li>
                 <li>Wonka</li>
             </ul>
        </p>
    </div>
    <div style="height: 100px;float:left; width: 300px;top:auto">
       
        <asp:Timer ID="Timer1" Interval="2000" runat="server" />
        <asp:UpdatePanel ID="up1" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:AdRotator ID="adr" runat="server" AdvertisementFile="adfile.xml" Height="200px" Width="100%" Target="_blank" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

</asp:Content>
