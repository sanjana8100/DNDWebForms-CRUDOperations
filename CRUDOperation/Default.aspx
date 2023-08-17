<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUDOperation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style = "font-size: x-large" class="text-start">
            <h1 class="text-center"><strong><span style="font-size: xx-large; color: #333399; background-color: #FFFFFF">Student Info Manage Form</span></strong></h1>
            <div class="text-start">
                <br />
            </div>
            <table class="w-100">
                <tr>
                    <td class="text-start" style="width: 370px">&nbsp;</td>
                    <td class="text-start" style="width: 369px"><strong>Student Name</strong></td>
                    <td class="text-start">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 370px">&nbsp;</td>
                    <td class="text-start" style="width: 369px"><strong>Address</strong></td>
                    <td class="text-start">
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Height="29px" Width="200px">
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 370px; height: 36px"></td>
                    <td class="text-start" style="width: 369px; height: 36px"><strong>Age</strong></td>
                    <td class="text-start" style="height: 36px">
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 370px">&nbsp;</td>
                    <td class="text-start" style="width: 369px"><strong>Contact</strong></td>
                    <td class="text-start">
                        <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 370px">&nbsp;</td>
                    <td class="text-start" style="width: 369px"><strong>Sex</strong></td>
                    <td class="text-start">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="17px" RepeatDirection="Horizontal" style="font-size: medium" Width="339px">
                            <asp:ListItem Value="Male"></asp:ListItem>
                            <asp:ListItem Value="Female"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 370px">&nbsp;</td>
                    <td class="text-start" style="width: 369px">&nbsp;</td>
                    <td class="text-start">
                        <br />
                        <asp:Button ID="Button1" runat="server" BackColor="#333399" BorderColor="#6600CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="SUBMIT" Width="149px" />
&nbsp;<asp:Button ID="Button6" runat="server" BackColor="#333399" BorderColor="#6600CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button6_Click" Text="RESET" Width="149px" />
                    &nbsp;&nbsp;
                        &nbsp;
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 370px">&nbsp;</td>
                    <td class="text-start" style="width: 369px">&nbsp;</td>
                    <td class="text-start">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="text-start" style="width: 370px">&nbsp;</td>
                    <td class="text-start" style="width: 369px">&nbsp;</td>
                    <td class="text-start">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="text-end" style="width: 370px; font-size: xx-large;">
                        <h2><span style="color: #333399; background-color: #FFFFFF"><strong>Student Info</strong></span></h2>
                    </td>
                    <td class="text-start" style="width: 369px">
                        <h2><strong></strong></h2>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" style="margin-left: 78" Width="394px"></asp:TextBox>
&nbsp;<asp:Button ID="Button4" runat="server" BackColor="White" BorderColor="Black" Font-Bold="True" Font-Size="Medium" ForeColor="#333399" OnClick="Button4_Click" Text="Search" Width="149px" BorderStyle="Outset" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="text-start">
            <div class="text-start">
                <br />
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="StudentId" GridLines="Horizontal" HorizontalAlign="Center" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="1325px" OnRowDeleting="GridView1_RowDeleting" style="margin-left: 0px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="StudentId" HeaderText="Student ID" ReadOnly="True" />
                            <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                            <asp:BoundField DataField="Address" HeaderText="Address" />
                            <asp:BoundField DataField="Age" HeaderText="Age" />
                            <asp:BoundField DataField="Contact" HeaderText="Contact" />
                            <asp:BoundField DataField="Sex" HeaderText="Sex" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True">
                            <ControlStyle BackColor="#333399" Font-Size="Medium" ForeColor="White" />
                            </asp:CommandField>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                            <ControlStyle BackColor="Black" Font-Size="Medium" ForeColor="White" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" Width="50px" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </div>
                <br />
                <br />
            </div>
        </div>
        <br />
        <br />
    </div>

</asp:Content>
