<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kyle's Loan Calculator</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Kyle's Loan Calculator
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tb_LoanAmt" runat="server" ></asp:TextBox>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tb_AnnualInterest" runat="server" ></asp:TextBox>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tb_LoanTerm" runat="server" ></asp:TextBox>
        
        <br /><br />


        <asp:Button ID="btnClear" runat="server" Text="Clear" />
        
         <tr/>
        <td align="right">&nbsp;</td><td align="left"> <asp:Button ID="btnCalcPmt" runat="server" TabIndex="4" Text="Calculate" />
            </td>
        </tr>


        <% If Not IsPostBack Then%>

        <p>
            Welcome to Kyle's Mortgage Calculator. Please Complete the fields above to have your monthly payment and loan repayment schedule 
            calculated for you.
        </p>

        <%Else%>
            <br />

        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br />
        <br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
            <AlternatingRowStyle CssClass="alt" />
        </asp:GridView> 

       <%End If%>
           </div>
    </form>
</body>
</html>
