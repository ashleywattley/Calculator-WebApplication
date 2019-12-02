<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Calculator2.Calculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <table class="nav-justified">
         <tr>
             <td style="height: 20px">Number 1</td>
             <td style="height: 20px">Operator</td>
             <td style="height: 20px">Number 2</td>
             <td style="height: 20px">
                 
      
                 <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                 
      
             <td style="height: 20px; width: 85px">Result</td>
                 
      
             <td style="height: 20px">&nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:TextBox ID="txtNumber1" runat="server"></asp:TextBox>
             </td>
             <td>
                 <asp:DropDownList ID="DropDownList1" runat="server">
                     <asp:ListItem Value="+">Add</asp:ListItem>
                     <asp:ListItem Value="-">Subtract</asp:ListItem>
                     <asp:ListItem Value="*">Multiply</asp:ListItem>
                     <asp:ListItem Value="/">Divide</asp:ListItem>
                 </asp:DropDownList>
             </td>
             <td>
                 <asp:TextBox ID="txtNumber2" runat="server"></asp:TextBox>
             </td>
             <td>
                 <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
             </td>
             <td style="width: 85px">
                 <asp:Label ID="lblResult" runat="server"></asp:Label>
             </td>
             <td>
                 &nbsp;</td>
         </tr>
         <tr>
             <td style="height: 20px">
                 <asp:Label ID="Label1" runat="server" Text="Fuel Calculator"></asp:Label>
             </td>
             <td style="height: 20px">
             </td>
             <td style="height: 20px">
             </td>
             <td style="height: 20px">
             </td>
             <td style="height: 20px; width: 85px">
             </td>
             <td style="height: 20px">
                 &nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label2" runat="server" Text="Miles Per Gallon"></asp:Label>
             </td>
             <td>
                 <asp:Label ID="Label3" runat="server" Text="Milage"></asp:Label>
             </td>
             <td>
                 <asp:Label ID="Label4" runat="server" Text="Cost per litre"></asp:Label>
             </td>
             <td>
                 Calculate</td>
             <td style="width: 85px">
                 <asp:Label ID="Label5" runat="server" Text="Litres"></asp:Label>
             </td>
             <td>
                 <asp:Label ID="Label6" runat="server" Text="Total cost"></asp:Label>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:TextBox ID="txtMpg" runat="server"></asp:TextBox>
             </td>
             <td>
                 <asp:TextBox ID="txtMilage" runat="server"></asp:TextBox>
             </td>
             <td>
                 <asp:TextBox ID="txtCostLitre" runat="server"></asp:TextBox>
             </td>
             <td>
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate" />
             </td>
             <td style="width: 85px">
                 <asp:Label ID="lblCalculate" runat="server"></asp:Label>
             </td>
             <td>
                 <asp:Label ID="lblFuelCost" runat="server"></asp:Label>
             </td>
         </tr>
     </table>

</asp:Content>