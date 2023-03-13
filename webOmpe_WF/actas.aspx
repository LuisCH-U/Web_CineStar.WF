<%@ Page Title="" Language="C#" MasterPageFile="~/Ompe.Master" AutoEventWireup="true" CodeBehind="actas.aspx.cs" Inherits="webOmpe_WF.actas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="server">
    <img src="images/f-actas.jpg" width="1170" height="248" class="img-responsive mg30top">
    <section class="menu navbar-default menu05">
			<a name="posicion"></a>
			<nav class="navbar-collapse bs-navbar-collapse collapse" aria-expanded="false">
				<ul class="nav navbar-nav">
					<li class="bt-azul"><a href="presidenciales.aspx">PRESIDENCIAL</a></li>
					<li class="bt-amarillo act-amarillo"><a href="actas.aspx">ACTAS</a></li>
					<li class="bt-rojo"><a href="participacion.aspx">PARTICIPACIÓN CIUDADANA</a></li>
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
                        <li><a href="./Actas-por-Ubigeo.html">Actas por ubigeo</a></li>
                        <li><a href="./Actas-por-numero.html" class="act-izq">Actas por número</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-xs-12 col-md-9 mg20top" id="impreso">
                <div class="contenido-interna">
                    <div class="titulos col-xs-12">
                        <div class="col-xs-11">
                            <h3><span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true" style="font-size: 19px"></span>SEGUNDA ELECCIÓN PRESIDENCIAL 2016: ACTAS POR NÚMERO</h3>
                        </div>

                        <%--<div class="col-xs-1 oculto-boton-print">
                            <button onclick="printContent('impreso');"><i class="fa fa-print ico-print"></i></button>
                        </div>--%>
                        <div class="col-xs-1 oculto-boton-print">
                                    <button onclick="printContent('impreso');"><i class="fa fa-print ico-print"></i></button>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="col-lg-7 centered">
                            <div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
                                <div class="col-xs-3 col-md-1 ">
                                    <span class="glyphicon glyphicon-ok-circle ico-info" aria-hidden="true"></span>
                                </div>

                                <div class="col-xs-9 col-md-11 mg20top">
                                    <ul>
                                        <li>ACTUALIZADO EL 07/01/2023 A LAS 06:28 h </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <asp:Panel ID="pnlActa" runat="server">
                            <div id="page-wrap">
                                <br>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <form id="myform" name="myform" class="horizontal-form" method="post" action="javascript:actas_bscarPrNmroMesa(document.getElementById('myform'));">
                                    <div class="col-md-3">
                                        INGRESE EL NÚMERO DE ACTA:
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtMesa" MaxLength="6" CssClass="form-control" runat="server"></asp:TextBox>
                                            <%--<span id="spanNroMesa">
                                                <input id="nroMesa" name="nroMesa" type="text" onkeypress="return validText(this, event, 4)" maxlength="6" class="form-control" value="">
                                            </span>--%>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </div>
                                    </div>

                                    <asp:Panel ID="pnlLinks" runat="server">
                                        <div class="col-md-2 achurado">
                                            <asp:LinkButton ID="lnkbuscar" runat="server" class="btn btn-primary" OnClick="btnbuscar_Click"> <span class="glyphicon glyphicon-search" aria-hidden="true"></span> BUSCAR </asp:LinkButton>
                                        </div>
                                    </asp:Panel>
                                </form>
                        </asp:Panel>

                        <asp:Panel ID="pnlError" runat="server">
                            <div id="divDetalle" class="ptop20">
                                <div class="contenido-resultados">
                                    <p>&nbsp;</p>
                                    <div class="row">
                                        <div class="tab-info">
                                            El numero de mesa que ha ingresado no existe
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="pnlResultado" runat="server">
                            <asp:FormView ID="fvActa" runat="server">
                                <ItemTemplate>
                                    <div id="divDetalle" class="ptop20">
                                <div class="contenido-resultados">
                                    <p>&nbsp;</p>
                                    <div class="row">
                                        <div class="tab-info">
                                            <div class="tab-content">
                                                <div id="detMesa">
                                                    <div class="tab-content">
                                                        <div role="tabpanel" class="tab-pane active" id="presidencial">
                                                            <div class="tab-info-desc">
                                                                <div class="row">
                                                                    <div class="col-xs-3 col-md-4">
                                                                        <div class="mesap01">
                                                                            <img src="images/mp-sin.jpg" class="img-responsive">
                                                                            Si requiere la imagen del acta, solicítela a través del procedimiento de acceso a la información pública.
														
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-xs-9 col-md-8">
                                                                        <div class="row">
                                                                            <div class="col-xs-12">
                                                                                <p class="subtitle1">ACTA ELECTORAL</p>
                                                                                <div id="page-wrap">
                                                                                    <table class="table13" cellspacing="0">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th>Mesa N°</th>
                                                                                                <th>N° Copia</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <td><%#Eval("idGrupoVotacion") %></td>
                                                                                        <td><%#Eval("nCopia") %></td>
                                                                                    </table>
                                                                                </div>
                                                                            </div>

                                                                            <div class="col-xs-12">
                                                                                <p class="subtitle1">INFORMACIÓN UBIGEO</p>
                                                                                <div id="page-wrap">
                                                                                    <table class="table14" cellspacing="0">
                                                                                        <tbody>
                                                                                            <tr class="titulo_tabla">
                                                                                                <td>Departamento</td>
                                                                                                <td>Provincia</td>
                                                                                                <td>Distrito</td>
                                                                                                <td>Local de votación</td>
                                                                                                <td>Dirección</td>
                                                                                            </tr>
                                                                                             <tr">
                                                                                                <td><%#Eval("Departamento") %></td>
                                                                                                <td><%#Eval("Provincia") %></td>
                                                                                                <td><%#Eval("Distrito") %></td>
                                                                                                <td><%#Eval("RazonSocial") %></td>
                                                                                                <td><%#Eval("Direccion") %></td>
                                                                                            </tr>
                                                                                            <%--<tr>
                                                                                                <td>LAMBAYEQUE</td>
                                                                                                <td>LAMBAYEQUE</td>
                                                                                                <td>MOTUPE</td>
                                                                                                <td>IE 10145 NARCISA LANDAZURI DE CAMPOS</td>
                                                                                                <td>CALLE PROGRESO 575</td>
                                                                                            </tr>--%>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                            </div>

                                                                            <div class="col-xs-12">
                                                                                <p class="subtitle1">INFORMACIÓN MESA</p>
                                                                                <div id="page-wrap">
                                                                                    <table class="table15" cellspacing="0">
                                                                                        <tbody>
                                                                                            <tr class="titulo_tabla">
                                                                                                <td>Electores hábiles</td>
                                                                                                <td>Total votantes</td>
                                                                                                <td>Estado del acta</td>
                                                                                            </tr>
                                                                                             <tr">
                                                                                                <td><%#Eval("ElectoresHabiles") %></td>
                                                                                                <td><%#Eval("TotalVotantes") %></td>
                                                                                                <td><%#Eval("idEstadoActa") %></td>
                                                                                            </tr>
                                                                                            <%--<tr>
                                                                                                <td>300</td>
                                                                                                <td>257</td>
                                                                                                <td>ACTA ELECTORAL NORMAL</td>
                                                                                            </tr>--%>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                    </div>
                                                                </div>

                                                                <div>
                                                                    <div class="col-xs-12 pbot30_acta">
                                                                        <p class="subtitle1">LISTA DE RESOLUCIONES</p>
                                                                        <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>No hay resoluciones para el acta seleccionada
																			
                                                                        <div id="page-wrap">
                                                                            <div class="col-md-12 resolu">
                                                                            </div>
                                                                        </div>
                                                                        <!-- <p class="centro"># : El valor consignado en el acta presenta ilegibilidad.</p> -->
                                                                    </div>

                                                                </div>

                                                                <div>
                                                                    <div class="col-xs-12">
                                                                        <p class="subtitle1">INFORMACIÓN DEL ACTA ELECTORAL</p>
                                                                        <div id="page-wrap" class="cont-tabla1">
                                                                            <table class="table06">
                                                                                <tbody>
                                                                                    <tr class="titulo_tabla">
                                                                                        <td colspan="2">Organización política</td>
                                                                                        <td>Total de Votos</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>PERUANOS POR EL KAMBIO</td>
                                                                                        <td><img width="40px" height="40px" src="images/simbolos/00000114.jpg"></td>
                                                                                        <%--<td>76</td>--%>
                                                                                        <td><%#Eval("P1") %></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>FUERZA POPULAR</td>
                                                                                        <td><img width="40px" height="40px" src="images/simbolos/00000106.jpg"></td>
                                                                                        <%--<td>174</td>--%>
                                                                                        <td><%#Eval("P2") %></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td colspan="2">VOTOS EN BLANCO</td>
                                                                                        <%--<td>1</td>--%>
                                                                                        <td><%#Eval("VotosBlancos") %></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td colspan="2">VOTOS NULOS</td>
                                                                                        <%--<td>6</td>--%>
                                                                                        <td><%#Eval("VotosNulos") %></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td colspan="2">VOTOS IMPUGNADOS</td>
                                                                                        <%--<td>0</td>--%>
                                                                                        <td><%#Eval(" VotosImpugnados ") %></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td colspan="2">TOTAL DE  VOTOS EMITIDOS</td>
                                                                                        <%--<td>257</td>--%>
                                                                                        <td><%#Eval(" TotalVotantes ") %></td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                                </ItemTemplate>
                            </asp:FormView>
                            
                        </asp:Panel>
                        <asp:Panel ID="pnlUbigeo" runat="server">
							<div class="col-xs-12 td34up">
                            <form id="frmBuscar" name="frmBuscar" action="" method="post" class="horizontal-form">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label class="control-label">Ámbito:</label>
                                        <div id="ambito" class="form-group">
                                            <select name="cdgoAmbito" id="cdgoAmbito" class="form-control">
                                                <option value="P">PERÚ</option>
                                                <option value="E">EXTRANJERO</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div id="dvNombreDepartamento" class="col-md-3" style="">
                                        <div class="form-group">
                                            <label id="lblDepartamento" class="control-label">Departamento:</label>
                                            <div id="departamentos">
                                                <select name="cdgoDep" id="cdgoDep" class="form-control">
                                                    <option selected="selected" value="">--SELECCIONE--</option>
                                                    <option value="010000">AMAZONAS</option>
                                                    <option value="020000">ANCASH</option>
                                                    <option value="030000">APURIMAC</option>
                                                    <option value="040000">AREQUIPA</option>
                                                    <option value="050000">AYACUCHO</option>
                                                    <option value="060000">CAJAMARCA</option>
                                                    <option value="240000">CALLAO</option>
                                                    <option value="070000">CUSCO</option>
                                                    <option value="080000">HUANCAVELICA</option>
                                                    <option value="090000">HUANUCO</option>
                                                    <option value="100000">ICA</option>
                                                    <option value="110000">JUNIN</option>
                                                    <option value="120000">LA LIBERTAD</option>
                                                    <option value="130000">LAMBAYEQUE</option>
                                                    <option value="140000">LIMA</option>
                                                    <option value="150000">LORETO</option>
                                                    <option value="160000">MADRE DE DIOS</option>
                                                    <option value="170000">MOQUEGUA</option>
                                                    <option value="180000">PASCO</option>
                                                    <option value="190000">PIURA</option>
                                                    <option value="200000">PUNO</option>
                                                    <option value="210000">SAN MARTIN</option>
                                                    <option value="220000">TACNA</option>
                                                    <option value="230000">TUMBES</option>
                                                    <option value="250000">UCAYALI</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="dvNombreProvincia" class="col-md-3" style="">
                                        <div class="form-group">
                                            <label id="lblProvincia" class="control-label">Provincia:</label>
                                            <div id="provincias">
                                                <select name="cdgoProv" id="cdgoProv" class="form-control">
                                                    <option selected="selected" value="">--SELECCIONE--</option>
                                                    <option value="140900">BARRANCA</option>
                                                    <option value="140200">CAJATAMBO</option>
                                                    <option value="140300">CANTA</option>
                                                    <option value="140400">CAÑETE</option>
                                                    <option value="140800">HUARAL</option>
                                                    <option value="140600">HUAROCHIRI</option>
                                                    <option value="140500">HUAURA</option>
                                                    <option value="140100">LIMA</option>
                                                    <option value="141000">OYON</option>
                                                    <option value="140700">YAUYOS</option>
                                                </select>
                                                <span id="aComentarioProvincia"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-4">
                                        <label id="lblDistrito" class="control-label">Distrito:</label>
                                        <div id="distritos" class="form-group">
                                            <select name="cdgoDist" id="cdgoDist" class="form-control">
                                                <option selected="selected" value="">--SELECCIONE--</option>
                                                <option value="140102">ANCON</option>
                                                <option value="140103">ATE</option>
                                                <option value="140125">BARRANCO</option>
                                                <option value="140104">BREÑA</option>
                                                <option value="140105">CARABAYLLO</option>
                                                <option value="140107">CHACLACAYO</option>
                                                <option value="140108">CHORRILLOS</option>
                                                <option value="140139">CIENEGUILLA</option>
                                                <option value="140106">COMAS</option>
                                                <option value="140135">EL AGUSTINO</option>
                                                <option value="140134">INDEPENDENCIA</option>
                                                <option value="140133">JESUS MARIA</option>
                                                <option value="140110">LA MOLINA</option>
                                                <option value="140109">LA VICTORIA</option>
                                                <option value="140101">LIMA</option>
                                                <option value="140111">LINCE</option>
                                                <option value="140142">LOS OLIVOS</option>
                                                <option value="140112">LURIGANCHO</option>
                                                <option value="140113">LURIN</option>
                                                <option value="140114">MAGDALENA DEL MAR</option>
                                                <option value="140115">MIRAFLORES</option>
                                                <option value="140116">PACHACAMAC</option>
                                                <option value="140118">PUCUSANA</option>
                                                <option value="140117">PUEBLO LIBRE</option>
                                                <option value="140119">PUENTE PIEDRA</option>
                                                <option value="140120">PUNTA HERMOSA</option>
                                                <option value="140121">PUNTA NEGRA</option>
                                                <option value="140122">RIMAC</option>
                                                <option value="140123">SAN BARTOLO</option>
                                                <option value="140140">SAN BORJA</option>
                                                <option value="140124">SAN ISIDRO</option>
                                                <option value="140137">SAN JUAN DE LURIGANCHO</option>
                                                <option value="140136">SAN JUAN DE MIRAFLORES</option>
                                                <option value="140138">SAN LUIS</option>
                                                <option value="140126">SAN MARTIN DE PORRES</option>
                                                <option value="140127">SAN MIGUEL</option>
                                                <option value="140143">SANTA ANITA</option>
                                                <option value="140128">SANTA MARIA DEL MAR</option>
                                                <option value="140129">SANTA ROSA</option>
                                                <option value="140130">SANTIAGO DE SURCO</option>
                                                <option value="140131">SURQUILLO</option>
                                                <option value="140141">VILLA EL SALVADOR</option>
                                                <option value="140132">VILLA MARIA DEL TRIUNFO</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label class="control-label">Locales:</label>
                                            <div id="divLocal">
                                                <select name="actas_ubigeo" id="actas_ubigeo" class="form-control">
                                                    <option value="-1?-1" selected="selected">--SELECCIONE--</option>
                                                    <option value="2633?140101">BIBLIOTECA NACIONAL</option>
                                                    <option value="4973?140101">CENTRO PILOTO DE RECUPERACION PEDAGOGICA</option>
                                                    <option value="5359?140101">IE 0001 MARIA AUXILIADORA</option>
                                                    <option value="4959?140101">IE 0014 INICIAL</option>
                                                    <option value="2639?140101">IE 0022 REPUBLICA DE GUATEMALA</option>
                                                    <option value="2640?140101">IE 0035 NUESTRA SEÑORA DE LA VISITACION</option>
                                                    <option value="4947?140101">IE 0095 MARIA AUXILIADORA</option>
                                                    <option value="2641?140101">IE 0099 OSCAR MIRO QUESADA DE LA GUERRA</option>
                                                    <option value="4965?140101">IE 021 SAN BENITO DE PALERMO</option>
                                                    <option value="2642?140101">IE 1001 JOSE JIMENEZ BORJA</option>
                                                    <option value="4953?140101">IE 1015 REPUBLICA DE ITALIA</option>
                                                    <option value="4948?140101">IE 1021 REPUBLICA FEDERAL ALEMANA</option>
                                                    <option value="5153?140101">IE 1027 REPUBLICA DE NICARAGUA</option>
                                                    <option value="5151?140101">IE 1028 REPUBLICA DE ARGENTINA</option>
                                                    <option value="5152?140101">IE 103 LUIS ARMANDO CABELLO HURTADO</option>
                                                    <option value="2643?140101">IE 1032 REPUBLICA DE BRASIL</option>
                                                    <option value="2644?140101">IE 1035 GENERAL JOSE DEL CARMEN MARIN ARISTA</option>
                                                    <option value="2645?140101">IE 1036 REPUBLICA DE COSTA RICA</option>
                                                    <option value="2646?140101">IE 1038 MARIA PARADO DE BELLIDO</option>
                                                    <option value="2647?140101">IE 1040 REPUBLICA DE HAITI</option>
                                                    <option value="2648?140101">IE 1049 JUANA ALARCO DE DAMMERT</option>
                                                    <option value="2649?140101">IE 105 PEDRO CORONADO ARRASCUE</option>
                                                    <option value="2650?140101">IE 111 SAN JOSE DE ARTESANOS</option>
                                                    <option value="2651?140101">IE 1146 REPUBLICA DE PARAGUAY</option>
                                                    <option value="2653?140101">IE 1148 JUANA INFANTES VERA</option>
                                                    <option value="2654?140101">IE 1149 SAGRADO CORAZON DE JESUS</option>
                                                    <option value="2655?140101">IE 1150 ABRAHAM ZEA CARRION</option>
                                                    <option value="2656?140101">IE 1154 NUESTRA SEÑORA DEL CARMEN</option>
                                                    <option value="4964?140101">IE 1157 JULIO CESAR TELLO</option>
                                                    <option value="2657?140101">IE 1162 DIVINO NIÑO JESUS</option>
                                                    <option value="2658?140101">IE 1168 HEROES DEL CENEPA</option>
                                                    <option value="4952?140101">IE 117 PASCUAL ALEGRE GONZALES</option>
                                                    <option value="2659?140101">IE 2659 EMBLEMATICA HIPOLITO UNANUE</option>
                                                    <option value="4951?140101">IE 4951 PEDRO GALVEZ EGUSQUIZA</option>
                                                    <option value="2660?140101">IE JUAN PABLO VIZCARDO Y GUZMAN</option>
                                                    <option value="2661?140101">IE NUESTRA SEÑORA DE MONSERRAT</option>
                                                    <option value="2662?140101">IE PNP CAP ALIPIO PONCE VASQUEZ</option>
                                                    <option value="2663?140101">IE PNP TUPAC AMARU</option>
                                                    <option value="4944?140101">IE SIMON BOLIVAR</option>
                                                    <option value="2634?140101">IEP COLEGIO SANTO TOMAS DE AQUINO</option>
                                                    <option value="2664?140101">IEP SANTISIMO SALVADOR</option>
                                                    <option value="2665?140101">IST ARGENTINA</option>
                                                    <option value="2669?140101">UNIVERSIDAD INCA GARCILASO DE LA VEGA</option>
                                                    <option value="2668?140101">UNIVERSIDAD INCA GARCILASO DE LA VEGA FACULTAD CIENCIAS CONTABLES</option>
                                                    <option value="2670?140101">UNIVERSIDAD INCA GARCILASO DE LA VEGA FACULTAD DE PSICOLOGÍA Y TRABAJO SOCIAL</option>
                                                    <option value="2636?140101">UNIVERSIDAD NACIONAL FEDERICO VILLARREAL</option>
                                                    <option value="2673?140101">UNIVERSIDAD NACIONAL FEDERICO VILLARREAL</option>
                                                    <option value="2671?140101">UNIVERSIDAD NACIONAL FEDERICO VILLARREAL</option>
                                                    <option value="2672?140101">UNIVERSIDAD NACIONAL FEDERICO VILLARREAL FACULTAD DE CC ECONÓMICAS CC CONTABLES</option>
                                                    <option value="2674?140101">UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS</option>
                                                    <option value="5147?140101">UNIVERSIDAD PERUANA LOS ANDES - FACULTAD DE CONTABILIDAD Y ADMINISTRACION</option>
                                                    <option value="2638?140101">UNIVERSIDAD SAN FERNANDO</option>
                                                    <option value="2675?140101">UNIVERSIDAD TECNOLOGICA DEL PERU</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="divDetalle" class="ptop20">
                                        <div class="col-xs-12 pbot30">
                                            <p class="subtitle">LISTADO DE MESAS</p>
                                            <div id="page-wrap">
                                                <table class="table17" cellspacing="0">
                                                    <tbody>
                                                        <tr>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031172</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031173</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031174</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031175</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031176</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031177</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031178</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031179</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031180</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031181</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031182</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031183</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031184</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031185</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031186</a></td>
                                                            <td bgcolor="#C1C1C1" style="cursor: pointer"><a href="#">031187</a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>

                                        <div class="col-xs-12 cont-recto oculto-leyenda-color-fondo-mesas">
                                            <div class="col-md-4">
                                                <img src="images/procesacon.jpg">
                                                Procesada con imagen</div>
                                            <div class="col-md-4">
                                                <img src="images/procesasin.jpg">
                                                Procesada sin imagen</div>
                                            <div class="col-md-4">
                                                <img src="images/sinprocesa.jpg">
                                                Sin procesar</div>
                                        </div>

                                        <div class="row pbot30">
                                            <div class="col-lg-8 centered">
                                                <div class="col-xs-12 col-md-12 col-lg-12">

                                                    <table>
                                                        <tbody>
                                                            <tr>
                                                                <td colspan="10">
                                                                    <div class="conte-paginador"><span class="paginador-txt">Total de mesas: 16</span></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="10">Página:
                                                                    <ul class="pagination">
                                                                        <li class="active"><a class="paginador-n1">1</a></li>
                                                                    </ul>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="10" height="30"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        </asp:Panel>

                    </div>
                    <div id="divDetalle" class="ptop20"></div>
                </div>

            </div>
        </div>

    </section>
</asp:Content>
