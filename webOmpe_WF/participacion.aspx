<%@ Page Title="" Language="C#" MasterPageFile="~/Ompe.Master" AutoEventWireup="true" CodeBehind="participacion.aspx.cs" Inherits="webOmpe_WF.participacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <img src="images/f-participacion.jpg" width="1170" height="248" class="img-responsive mg30top">
    <section class="menu navbar-default menu05">
			<a name="posicion"></a>
			<nav class="navbar-collapse bs-navbar-collapse collapse" aria-expanded="false">
				<ul class="nav navbar-nav">
					<li class="bt-azul"><a href="presidenciales.aspx">PRESIDENCIAL</a></li>
					<li class="bt-amarillo "><a href="actas.aspx">ACTAS</a></li>
					<li class="bt-rojo act-rojo"><a href="participacion.aspx">PARTICIPACIÓN CIUDADANA</a></li>
				</ul>
			</nav>
		</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <section class="contenedor">
		<div class="row">
			<div class="col-xs-12 col-md-3 mg20top">
				<div class="menu-interna">
					<ul>
						<li><a href="todos.html" class="act-izq">TOTAL</a></li>
					</ul>
				</div>
			</div>
			<div class="col-xs-12 col-md-9 mg20top" id="impreso">
				<div class="contenido-interna">
					<div class="titulos col-xs-12">
						<div class="col-xs-11">
							<h3> <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true" style="font-size:19px"></span> SEGUNDA ELECCIÓN PRESIDENCIAL 2016: PARTICIPACIÓN CIUDADANA</h3>
						</div>
					</div>
					<asp:Panel ID="pnlBotones" runat="server">
						<table>
                        <tr>
                            <td><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> REGRESAR</button></td>
                            <td width="60%">&nbsp;</td>
                            <td><button type="button" class="btn btn-primary">REPORTE DETALLADO EN EXCEL</button></td>
                        </tr>
                    </table>					
					</asp:Panel>
										
                <div class="col-xs-12">
                    <p class="subtitle">ACTAS CONTABILIZADAS</p>
                    <div class="col-lg-7 centered">
                        <div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
                            <div class="col-xs-3 col-md-1">
                                <span class="glyphicon glyphicon-ok-circle ico-info" aria-hidden="true"></span>
                            </div>                        
                            <div class="col-xs-9 col-md-11">
                                <ul>
                                    <li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h </li>
                                </ul>
                            </div>
                        </div>
                    </div>
						<br>
				</div>

				<div class="col-xs-12 line pbot30">
					<div class="col-xs-12 col-md-6">
						<img src="images/estadistico.png" class="img-responsive">
                    </div>
					<div class="col-xs-12 col-md-6">
						<p class="subtitle">ELECTORES HÁBILES 22,901,954</p>
						<div id="page-wrap">
							<table class="table09_2" cellspacing="0">
                                <tr>
                                    <th>PARTICIPACIÓN</th>
                                    <th>AUSENTISMO</th>
                                </tr>
                                <tr>
                                    <td>TOTAL: 18,342,896</td>
                                    <td>TOTAL: 4,559,058</td>
                                </tr>
                                <tr>
                                    <td>% TOTAL: 80.093%</td>
                                    <td>% TOTAL: 19.907%</td>
                                </tr>
							</table>
						</div>
					</div>
				</div>
					<asp:Panel ID="pnlLinks" runat="server">
						<div class="col-xs-12 pbot30 ptop20">
							<div class="col-xs-12 col-md-6">
								<asp:LinkButton ID="lnkExtranjero" runat="server" OnClick="lnkExtranjero_Click"><img src="images/icono_extranjero.jpg" class="img-responsive"/></asp:LinkButton>
							</div>
							<div class="col-xs-12 col-md-6">
								<asp:LinkButton ID="lnkPeru" runat="server" OnClick="lnkPeru_Click"><img src="images/icono_nacional.jpg" class="img-responsive"/></asp:LinkButton>
							</div>
						</div>
					</asp:Panel>
					
					<asp:panel ID="pnlResultados" runat="server">
						<div class="col-xs-12">
						<p class="subtitle">Consulta de participación DETALLADO </p>
						<div id="page-wrap">
							<table class="table21">
								<tbody>
                                    <tr class="titulo_tabla">
										<td><asp:Label ID="lblDPD" runat="server"></asp:Label></td>
                                        <!---<td>DEPARTAMENTO</td> --->
                                        <td>TOTAL ASISTENTES</td>
                                        <td>% TOTAL ASISTENTES</td>
                                        <td>TOTAL AUSENTES</td>
                                        <td>% TOTAL AUSENTES</td>
                                        <td>ELECTORES HÁBILES</td>
                                    </tr>
									<asp:Repeater ID="rptRegistros" runat="server">
										<ItemTemplate>
											<tr onclick="location.href='participacion.aspx?id=<%#Eval("DPD") %>'" onmouseover="this.style.cursor = &quot;pointer&quot;; this.style.color = &quot;grey&quot;" onmouseout="this.style.color = &quot;black&quot;" style="cursor: pointer; color: black;">
												<td><%#Eval("DPD") %></td>
												<td><%#Eval("TV","{0:#,##0.###}") %></td>
												<td><%#Eval("PTV") %></td>
												<td><%#Eval("TA","{0:#,##0.###}") %></td>
												<td><%#Eval("PTA") %></td>
												<td><%#Eval("EH","{0:#,##0.###}") %></td>
											</tr>
										</ItemTemplate>
									</asp:Repeater>
									<tr>
                                        <td>TOTALES</td>	
                                        <td>17,953,367</td> 
                                        <td>81.543%</td>
                                        <td>4,063,663</td>
                                        <td>18.457%</td>
                                        <td>22,017,030</td>
                                    </tr>
								</tbody>
							</table>
							<br />
						</div>
					</div>	
				</asp:panel>					
				</div>
			</div>
	
		</div>
	</section>	
</asp:Content>
