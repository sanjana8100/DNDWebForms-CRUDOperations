<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUDOperation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style = "font-size: x-large" align = "center">Student Info Manage Form<br />
            <table class="w-100">
                <tr>
                    <td class="text-start" style="width: 183px">&nbsp;</td>
                    <td class="text-start" style="width: 369px">Student ID</td>
                    <td class="text-start">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="383px"></asp:TextBox>
&nbsp;
                        <asp:Button ID="Button5" runat="server" BackColor="#9933FF" BorderColor="#6600CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button5_Click" Text="GET" Width="149px" />
                    </td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 183px">&nbsp;</td>
                    <td class="text-start" style="width: 369px">Student Name</td>
                    <td class="text-start">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="383px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 183px">&nbsp;</td>
                    <td class="text-start" style="width: 369px">Address</td>
                    <td class="text-start">
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Height="29px">
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 183px; height: 36px"></td>
                    <td class="text-start" style="width: 369px; height: 36px">Age</td>
                    <td class="text-start" style="height: 36px">
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="383px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 183px">&nbsp;</td>
                    <td class="text-start" style="width: 369px">Contact</td>
                    <td class="text-start">
                        <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="383px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 183px">&nbsp;</td>
                    <td class="text-start" style="width: 369px">&nbsp;</td>
                    <td class="text-start">
                        <asp:Button ID="Button1" runat="server" BackColor="#9933FF" BorderColor="#6600CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Insert" Width="149px" />
&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="#9933FF" BorderColor="#6600CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button2_Click" Text="Update" Width="149px" />
&nbsp;
                        <asp:Button ID="Button3" runat="server" BackColor="#9933FF" BorderColor="#6600CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" OnClientClick="return confirm('Are you sure you want to Delete?');" Text="Delete" Width="149px" />
&nbsp;
                        <asp:Button ID="Button4" runat="server" BackColor="#9933FF" BorderColor="#6600CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button4_Click" Text="Search" Width="149px" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="text-center">
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Height="74px" style="margin-left: 400px" Width="721px">
            </asp:GridView>
        </div>
        <br />
        <br />
    </div>

</asp:Content>
