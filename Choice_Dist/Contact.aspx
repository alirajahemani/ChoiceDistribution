<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <br />
        <h2>Choice Distribution</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>(403)720-8588</span>
        </p>
        <p>
            <span class="label">Fax:</span>
            <span>(403)720-8589</span>
        </p>
		<p>
            <span class="label">Cell:</span>
            <span>(587)707-1656</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
			<span>To Place Order Email @ </span>
            <span><a href="mailto:amyncad@gmail.com">amyncad@gmail.com</a></span>
        </p>
        
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            Bay 16, 3740 27th St., NE<br />
			Calgary, AB T1Y 5E2
        </p>
    </section>
    <br />
    Or <h2>Fill the form below and we will get back to you.</h2>
    <br />
    <table>
        <tr>
            <td>
                Name:
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Contact Number:
            </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Product:
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Snapple</asp:ListItem>
                    <asp:ListItem>Pop</asp:ListItem>
                    <asp:ListItem>Calypso</asp:ListItem>
                    <asp:ListItem>Hanks</asp:ListItem>
                    <asp:ListItem>Oh Yeah!</asp:ListItem>
                    <asp:ListItem>Ptron</asp:ListItem>
                    <asp:ListItem>Cottage Country</asp:ListItem>
                    <asp:ListItem>Fritolay</asp:ListItem>
                    <asp:ListItem>Wonka</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Message:
            </td>
            <td>
                <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email:
            </td>
            <td>
                <asp:TextBox ID="txtEmail" Enabled="true" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="rfvTxtEmail" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" Text="Email Error"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr> 
            <td colspan="2">
                <asp:Button  runat="server" ID="btnSubmit" Text="Submit" />
            </td>
            <td>
                <asp:Button  runat="server" ID="btnReset" Text="Reset" OnClick="btnReset_Click" />
            </td>
        </tr>
        </table>
</asp:Content>