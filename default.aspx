<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kyle's Loan Calculator</title>
    <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
    
</head>

<body>
    <form id="form1" runat="server">
    <div>
    
       <h1> Kyle's Loan Calculator </h1>
        <div id="Border"> </div>
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tb_LoanAmt" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_LoanAmt" ErrorMessage="Please Input Loan Amount"></asp:RequiredFieldValidator>          
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tb_AnnualInterest" runat="server" ></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_AnnualInterest" ErrorMessage="Please Enter Interest Rate"></asp:RequiredFieldValidator>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tb_LoanTerm" runat="server" ></asp:TextBox>

       
        
        <br /><br />


        <asp:Button ID="btnClear" runat="server" Text="Clear" Width="57px" />
       

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" Width="157px" />
       
         <% If Not IsPostBack Then%>

        <p>
            Welcome to Kyle's Mortgage Calculator. Please Complete the fields above to have your monthly payment and loan repayment schedule 
            calculated for you.
        </p>

        <%Else%>
            <br />

        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server" CssClass="bold"></asp:Label>
        
        <br />
        <br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview" AlternatingRowStyle-CssClass="alt" > 
<AlternatingRowStyle CssClass="alt" BackColor="Aqua"></AlternatingRowStyle>
            <RowStyle BackColor="White" />
        </asp:GridView>
        <%End If %>
        </div>
    </form>
</body>
</html>
