<!--
    Forseti, El ERP Gratuito para PyMEs
    Copyright (C) 2015 Gabriel Gutiérrez Fuentes.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
-->
<%@ page import="forseti.*, forseti.sets.*"%>
<%
	String alm_traspasos = (String)request.getAttribute("alm_traspasos");
	if(alm_traspasos == null)
	{
		RequestDispatcher despachador = getServletContext().getRequestDispatcher("/forsetiweb/errorAtributos.jsp");
      	despachador.forward(request,response);
		return;
	}
	
	// Parametros de entidad cuando se generan por primera vez
	String titulo =  JUtil.getSesion(request).getSesion("ALM_TRASPASOS").generarTitulo();
	String donde = JUtil.getSesion(request).getSesion("ALM_TRASPASOS").generarWhere();
	String orden = JUtil.getSesion(request).getSesion("ALM_TRASPASOS").generarOrderBy();
	String colvsta = JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","COLUMNAS",2);
	String coletq = JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","COLUMNAS",1);
	int etq = 1, col = 1;
	String sts = JUtil.Msj("CEF", "ALM_TRASPASOS", "VISTA", "STATUS", 2);

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script language="JavaScript" type="text/javascript" src="../../compfsi/comps.js">
</script>
<script language="JavaScript" type="text/javascript" src="../../compfsi/staticbar.js">
</script>
<script language="JavaScript" type="text/javascript">
<!-- 
if(top.location == self.location) {
	top.location.href = "../forsetiweb/forseti.html"
}
if(parent.tiempo.document.URL.indexOf('alm_traspasos_tmp.jsp') == -1) {
	parent.tiempo.document.location.href = "../forsetiweb/almacen/alm_traspasos_tmp.jsp"
}
if(parent.entidad.document.URL.indexOf('alm_traspasos_ent.jsp') == -1) {
	parent.entidad.document.location.href = "../forsetiweb/almacen/alm_traspasos_ent.jsp"
}
if(parent.ztatuz.document.URL.indexOf('alm_traspasos_sts.jsp') == -1) {
	parent.ztatuz.document.location.href = "../forsetiweb/almacen/alm_traspasos_sts.jsp"
}
-->
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../../compfsi/estilos.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">
<form action="/servlet/CEFAlmTraspasosDlg" method="post" enctype="application/x-www-form-urlencoded" name="alm_traspasos" target="_self">
<div id="topbar">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="titCuerpoBco" align="center" valign="middle" bgcolor="#333333"><%= titulo %></td>
  </tr>
<%	
	String mensaje = JUtil.getMensaje(request, response);	
	out.println(mensaje);
%>  
 <tr>
    <td bgcolor="#333333">
		<table width="100%" border="0" cellpadding="0" cellspacing="5">
		 <tr> 
          <td> 
		    <div align="right">
			  <input name="proceso" type="hidden" value="ACTUALIZAR">
			  <input name="tipomov" type="hidden" value="TRASPASOS">
			  <input name="submit" type="image" onClick="javascript:establecerProcesoSVE(this.form.proceso, 'AGREGAR_TRASPASO',<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","AGREGAR_TRASPASO",4) %>,<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","AGREGAR_TRASPASO",5) %>)" src="../imgfsi/<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","AGREGAR_TRASPASO") %>" alt="" title="<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","AGREGAR_TRASPASO",2) %>" border="0">
              <input name="submit" type="image" onClick="javascript:establecerProcesoSVE(this.form.proceso, 'CONSULTAR_TRASPASO',<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","CONSULTAR_TRASPASO",4) %>,<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","CONSULTAR_TRASPASO",5) %>)" src="../imgfsi/<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","CONSULTAR_TRASPASO") %>" alt="" title="<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","CONSULTAR_TRASPASO",2) %>" border="0">
             
			  <input name="submit" type="image" onClick="javascript:establecerProcesoSVE(this.form.proceso, 'SELLAR_TRASPASO',<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","SELLAR_TRASPASO",4) %>,<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","SELLAR_TRASPASO",5) %>)" src="../imgfsi/<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","SELLAR_TRASPASO") %>" alt="" title="<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","SELLAR_TRASPASO",2) %>" border="0">
              <input name="submit" type="image" onClick="javascript:establecerProcesoSVE(this.form.proceso, 'XML_TRASPASO',<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","XML_TRASPASO",4) %>,<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","XML_TRASPASO",5) %>)" src="../imgfsi/<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","XML_TRASPASO") %>" alt="" title="<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","XML_TRASPASO",2) %>" border="0">
              <input name="submit" type="image" onClick="javascript:establecerProcesoSVE(this.form.proceso, 'PDF_TRASPASO',<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","PDF_TRASPASO",4) %>,<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","PDF_TRASPASO",5) %>)" src="../imgfsi/<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","PDF_TRASPASO") %>" alt="" title="<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","PDF_TRASPASO",2) %>" border="0">
             
			  <input type="image" onClick="javascript: if(confirm('<%= JUtil.Msj("GLB","GLB","GLB","CONFIRMACION",3) %>')) { establecerProcesoSVE(this.form.proceso, 'CANCELAR_TRASPASO',<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","CANCELAR_TRASPASO",4) %>,<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","CANCELAR_TRASPASO",5) %>); } else { return false; } " src="../imgfsi/<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","CANCELAR_TRASPASO") %>" alt="" title="<%= JUtil.Msj("CEF","ALM_TRASPASOS","VISTA","CANCELAR_TRASPASO",2) %>" border="0">
              <input name="submit" type="image" onClick="javascript:establecerProcesoSVE(this.form.proceso, 'RASTREAR_TRASPASO',400,250)" src="../imgfsi/es_rastrear_registro.png" alt="" title="<%= JUtil.Msj("GLB","VISTA","GLB","HERRAMIENTAS",4) %>" border="0">
              <a href="javascript:try { gestionarArchivos('ALM_TRASPASOS', document.alm_traspasos.ID.value, ''); } catch(err) { gestionarArchivos('ALM_TRASPASOS', '', ''); }" target="_self"><img src="../imgfsi/es_gestionar_archivos.png" alt="" title="<%= JUtil.Msj("GLB","VISTA","GLB","HERRAMIENTAS",5) %>" border="0"></a> 
			  <a href="/servlet/CEFAlmTraspasosCtrl" target="_self"><img src="../imgfsi/actualizar.png" alt="" title="<%= JUtil.Msj("GLB","VISTA","GLB","HERRAMIENTAS",1) %>" border="0"></a> 
              <input name="submit" type="image" onClick="javascript:establecerProcesoSVE(this.form.proceso, 'IMPRIMIR',400,250)" src="../imgfsi/imprimir.png" alt="" title="<%= JUtil.Msj("GLB","VISTA","GLB","HERRAMIENTAS",2) %>" border="0">
            </div>
			</td>
        </tr>
      </table>
	</td>
  </tr> 
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#0099FF">
	  <table width="100%" border="0" cellpadding="1" cellspacing="0">
          <tr>
			<td width="2%" align="center">&nbsp;</td>
			<td width="3%" align="center"><a class="titChico" href="/servlet/CEFAlmTraspasosCtrl?orden=Salida&etq=<%= JUtil.Elm(coletq,etq++) %>"><%= JUtil.Elm(colvsta,col++) %></a></td>
			<td width="10%" align="center"><a class="titChico" href="/servlet/CEFAlmTraspasosCtrl?orden=Fecha&etq=<%= JUtil.Elm(coletq,etq++) %>"><%= JUtil.Elm(colvsta,col++) %></a></td>
			<td width="10%" align="left"><a class="titChico" href="/servlet/CEFAlmTraspasosCtrl?orden=BodegaDEST&etq=<%= JUtil.Elm(coletq,etq++) %>"><%= JUtil.Elm(colvsta,col++) %></a></td>
			<td width="5%" align="center"><a class="titChico" href="/servlet/CEFAlmTraspasosCtrl?orden=Status&etq=<%= JUtil.Elm(coletq,etq++) %>"><%= JUtil.Elm(colvsta,col++) %></a></td>
			<td align="left"><a class="titChico" href="/servlet/CEFAlmTraspasosCtrl?orden=Concepto&etq=<%= JUtil.Elm(coletq,etq++) %>"><%= JUtil.Elm(colvsta,col++) %></a></td>
			<td width="20%" align="left"><a class="titChico" href="/servlet/CEFAlmTraspasosCtrl?orden=Referencia&etq=<%= JUtil.Elm(coletq,etq++) %>"><%= JUtil.Elm(colvsta,col++) %></a></td>
			<td width="3%" align="left"><a class="titChico" href="/servlet/CEFAlmTraspasosCtrl?orden=TFD&etq=<%= JUtil.Elm(coletq,etq++) %>"><%= JUtil.Elm(colvsta,col++) %></a></td>
		  </tr>
	 </table>
	</td>
  </tr>
</table>	
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
 	  <td height="120" bgcolor="#333333">&nbsp;</td>
 	</tr>
 	<tr>
      <td> 
        <table width="100%" border="0" cellpadding="1" cellspacing="0">
<%
	JAlmacenesMovBodSetV2 set = new JAlmacenesMovBodSetV2(request);
	set.m_Where = donde;
	set.m_OrderBy = orden; 
	set.Open();
	for(int i=0; i < set.getNumRows(); i++)
	{
		String status, clase;
		
		if(set.getAbsRow(i).getStatus().equals("G"))
		{
			status = JUtil.Elm(sts,2); 
			clase = "";
		}
		else if(set.getAbsRow(i).getStatus().equals("E"))
		{
			status = JUtil.Elm(sts,3); 
			clase = "";
		}
		else if(set.getAbsRow(i).getStatus().equals("R"))
		{
			status = JUtil.Elm(sts,4);
			clase = " class=\"txtChicoAz\"";
		}
		else if(set.getAbsRow(i).getStatus().equals("P"))
		{
			status = JUtil.Elm(sts,5);
			clase = " class=\"txtChicoAz\"";
		}
		else if(set.getAbsRow(i).getStatus().equals("C"))
		{
			status = JUtil.Elm(sts,6);
			clase = " class=\"txtChicoRj\"";
		}
		else
		{
			status = "";
			clase = "";
		} 
%>
          <tr<%= clase  %>>

	      	<td width="2%" align="center"><input type="radio" name="ID" value="<%= set.getAbsRow(i).getID_Movimiento() %>"></td>
			<td width="3%" align="center"><%= set.getAbsRow(i).getSalida() %></td>
			<td width="10%" align="center"><%= set.getAbsRow(i).getFecha() %></td>
			<td width="10%" align="left"><%= set.getAbsRow(i).getBodegaDEST() %></td>
			<td width="5%" align="center"><%= status %></td>
			<td align="left"><%= set.getAbsRow(i).getConcepto() %></td>
			<td width="20%" align="left"><%= set.getAbsRow(i).getReferencia() %></td>
			<td width="3%" align="center"><% if(set.getAbsRow(i).getTFD() == 3) { out.print("PDF"); } else if(set.getAbsRow(i).getTFD() == 2) { out.print("TFD"); } else { out.print("---"); } %></td>

         </tr>		
<%
	}
%>		
       </table>
	 </td>
  </tr>
</table>
</form>
</body>
</html>
