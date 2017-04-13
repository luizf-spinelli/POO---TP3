<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Sistemas de Amortização</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />    
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body >
    <%@include file="WEB-INF/jspf/menu.jspf"%>
<br/><br/>
   <!--/.NAVBAR END-->
   <section id="pp_full_res">
   <div class="container" style="text-align:center">
       <h4>César Cesario:</h4><p> Responsável pelo desenvolvimento de...</p>
       <h4>Felipe Lima:</h4><p> Responsável pelo desenvolvimento de...</p>
       <h4>Luiz Spinelli:</h4><p> Responsável pelo desenvolvimento da home, da página SAA e layout padrão.</p>
       <h4>Raul Silva:</h4><p> Responsável pelo desenvolvimento de...</p>
       <h4>Weslley Felizardo:</h4><p> Responsável pelo desenvolvimento de...</p>
   </div>
   </section>
   <hr/>
    <!--/.INTRO END-->
         <section id="just-intro">
             <div class="container">
             <div class="row text-center pad-row">
            <div class="col-md-4  col-sm-4">
                 <i class="fa fa-plus  fa-4x"></i>
                            <h4> <strong>Sistema de amortização americano</strong> </h4>
                            <p>
                                O SAC é uma forma de pagamento de empréstimos que
                                se caracteriza pelo pagamento apenas dos juros da
                                dívida, deixando o valor da dívida constante, que
                                pode ser paga em apenas um único pagamento.
                            </p>
                       <a href="amortizacao-americano.jsp" class="btn btn-primary" >Ir</a>    
                </div>
             <div class="col-md-4  col-sm-4">
                 <i class="fa fa-plus  fa-4x"></i>
                            <h4> <strong>Tabela PRICE</strong> </h4>
                            <p>
                                Tabela Price, também chamado de sistema francês 
                                de amortização, é um método usado em amortização
                                de empréstimo cuja principal característica é 
                                apresentar prestações (ou parcelas) iguais.
                            </p>
                           <a href="tabela-price.jsp" class="btn btn-primary" >Ir</a>
                </div>
            <div class="col-md-4  col-sm-4">
                  <i class="fa fa-plus  fa-4x"></i>
                            <h4> <strong>Sistema de amortização constante</strong> </h4>
                            <p>
                                Neste sistema o saldo devedor é reembolsado em 
                                valores de amortização iguais. Desta forma, no 
                                sistema SAC o valor das prestações é decrescente, 
                                já que os juros diminuem a cada prestação.                                
                            </p>
                       <a href="amortizacao-constante.jsp" class="btn btn-primary" >Ir</a>    
                </div>
                    
            </div>
                 </div>
         </section>
     <!--/.JUST-INTRO END-->
     <%@include file="WEB-INF/jspf/footer.jspf"%>
    <!--/.FOOTER END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/plugins/bootstrap.js"></script>
  <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>
</body>
</html>

