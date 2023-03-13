<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="webOmpe_WF.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>        
            <title>ONPE - Oficina Nacional de Procesos Electorales</title>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  /> 
            <meta http-equiv="X-UA-Compatible" content="IE=9" />
            <link href="css/bootstrap.css"       rel="stylesheet" type="text/css" media="screen"/>
            <link href="css/style.css"       rel="stylesheet" type="text/css" media="screen"/>
            <link href="css/font-awesome.min.css"       rel="stylesheet" type="text/css" media="screen"/>      
</head>
    <body>
         <header>
            <div class="container">
                <div class="pull-left logo-onpe">
                    <div class="pull-left"><a href="index.aspx"><img src="images/onpe-trans.png"/></a></div>
                
                    <div class="pull-left"> <h1>PRESENTACIÓN DE RESULTADOS</h1> </div>
                </div>
    
                <div class="pull-right logo"><img src="images/eegg2016-trans.png" width="218" height="35"/></div>
            </div>
	    </header>
    
	    <section class="container space02 nosub">
            <form id="form1" runat="server">
                     <div class="pull-left pd02 ancho-ie">
                        <asp:LinkButton ID="lnkPresidenciales" runat="server" OnClick="lnkPresidenciales_Click">
                            <div class="grow pic btn01"><img src="images/presidenciales.jpg"/></div>
                            <div class="tit02"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span><p>PRESIDENCIALES</p></div>
                        </asp:LinkButton>
                    </div>
                    <div class="pull-left pd02 oculto2 ancho-ie">
                        <asp:LinkButton ID="lnkActas" runat="server" OnClick="lnkActas_Click">
                            <div class="grow pic btn04"><img src="images/actas.jpg" /></div>
                            <div class="tit02"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span><p>ACTAS</p></div>
                        </asp:LinkButton>
                        </div>
                    <div class="pull-left pd01 ancho-ie">
                        <asp:LinkButton ID="lnkParticipacion" runat="server" OnClick="lnkParticipacion_Click">
                            <div class="grow pic btn05"><img src="images/participacion.jpg" /></div>
                            <div class="tit01"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span><p>PARTICIPACIÓN <br> CIUDADANA</p></div>
                        </asp:LinkButton>
                    </div>
            </form>
        </section>
    
        <footer class="footer-index">
            <div class="container ">
                   <div class="col-md-12 direc01">
                       <span>CONTÁCTENOS</span>
                       <p>Jr. Washington 1894, Cercado de Lima </p>
                       <p>Correo electrónico: <a href="#">informes@onpe.gob.pe</a></p>
                       <p>Central Telefónica: 417 - 0630 / Lunes a Viernes 08:30 - 16:30 hrs</p>
                   </div>
            </div>
        </footer>
    </body>
</html>
