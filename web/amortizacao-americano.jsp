<%@page import="java.text.DecimalFormat"%>;

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Sistema de Amortização Americano</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />    
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>    
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <br/><br/>
        <section class="home">
        <div class="container" style="align-content: center">
        <h3>SAA</h3>
        <hr/>
        <%
            int p=0;
            try{p = Integer.parseInt(request.getParameter("p"));}
            catch(Exception e){}
            float v=0;
            try{v = Float.parseFloat(request.getParameter("v"));}
            catch(Exception e){}
            float j=0;
            try{j = Float.parseFloat(request.getParameter("j"));}
            catch(Exception e){}
            DecimalFormat cv = new DecimalFormat("#0.00"); 
            DecimalFormat cj = new DecimalFormat("#0.00");
        %>
        <form>
        <table>
            <tr>
                <td align="right"> Período(meses) <input type="number" name="p" placeholder="ex: 12"/></td>
            </tr>
            <tr>
                <td align="right"> Valor(R$) <input type="number" step="0.01" name="v" placeholder="ex: 12000,67"/></td>
            </tr>
            <tr>
                <td align="right"> Juros(%a.m.) <input type="number" step="0.01" name="j" placeholder="ex: 12,5"></td>
            </tr>
            <tr>
                <td align="center"><br><input type="submit" value="Gerar"/></br></td>                
            </tr>
        </table>
        </form>
        <hr/>
        <table border="1px">
            <tr>
                <td align=center><b> Mês </b></td>
                <td align=center><b> Saldo Devedor (R$) </b></td>
                <td align=center><b> Amortização (R$) </b></td>
                <td align=center><b> Juros (R$) </b></td>
            </tr>
            <%for(int i=0; i<=p; i++){%>
            <tr>
                <td align="center"><%=i%></td>
                <%if(i==p){
                out.println("<td align=right>" + cv.format(0) + "</td>");
                }
                else{
                out.println("<td align=right>" + cv.format(v) + "</td>");
                }%>
                <%if(i==p){
                out.println("<td align=right>" + cv.format(v) + "</td>");
                }
                else{
                out.println("<td align=right>" + cv.format(0) + "</td>");
                }%>
                <%if(i!=0){
                out.println("<td align=right>" + cj.format(v*j*0.01) + "</td>");
                }
                else{
                out.println("<td align=right>" + cj.format(0) + "</td>");
                }%>                
            </tr>
            <%}%>
        </table>
            <br/>
        <table>
            <tr>
                <td>O total de juros é de:</td>
                <td align=right><b>R$ <%=cj.format(p*v*j*0.01)%></b></td>
            </tr>
                <td>O total a pagar é de:</td>
                <td align=right><b>R$ <%=cv.format((p*v*j*0.01)+v)%></b></td>
        </table>
        </div>
        </section>
        <br/>
        <br/>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/plugins/bootstrap.js"></script>
  <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>
    </body>
</html>