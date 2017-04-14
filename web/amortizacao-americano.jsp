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
    <title>Sistema de amortização americano</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />    
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
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
        %>
        <form>
        <table>
            <tr>
                <td> Período(meses): </td>
                <td><input type="number" name="p" value="<%=p%>"/></td>
            </tr>
            <tr>
                <td> Valor(R$): </td>
                <td><input type="number" name="v" value="<%=v%>"/></td>
            </tr>
            <tr>
                <td> Juros(%a.m.): </td>
                <td><input type="number" name="j" value="<%=j%>"/><td>
            </tr>
            <tr>
                <td><input type="submit" value="Gerar"/></td>
                <td><input type="reset" value="Limpar"/></td>
            </tr>
        </table>
        </form>
        <hr/>
        <table border="1px">
            <tr>
                <td align=center> Mês </td>
                <td align=center> Saldo Devedor (R$) </td>
                <td align=center> Amortização (R$) </td>
                <td align=center> Juros (R$) </td>
                <td align=center> Prestação (R$) </td>
            </tr>
            <%for(int i=0; i<=p; i++){%>
            <tr>
                <td><%=i%></td>
                <%if(i==p){
                out.println("<td align=right>"+0+"</td>");
                }
                else{
                out.println("<td align=right>"+v+"</td>");
                }%>
                <%if(i==p){
                out.println("<td align=right>"+v+"</td>");
                }
                else{
                out.println("<td align=right>"+0+"</td>");
                }%>
                <%if(i!=0){
                out.println("<td align=right>"+v*j*0.01+"</td>");
                }
                else{
                out.println("<td align=right>"+0+"</td>");
                }%>
                <%if(i<p){
                out.println("<td align=right>"+v*j*0.01+"</td>");
                }
                else{
                out.println("<td align=right>"+((v*j*0.01)+v)+"</td>");
                }%>
                
            </tr>
            <%}%>
        </table>
            <br/>
        <table>
            <tr>
                <td>O total de juros é de </td>
                <th>R$ <%=p*v*j*0.01%></th>
            </tr>
                <td>O total a pagar é de</td>
                <th>R$ <%=(p*v*j*0.01)+v%></th>
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