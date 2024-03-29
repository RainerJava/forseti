/*
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
*/
package forseti.sets;

import forseti.*;
import javax.servlet.http.*;
import java.sql.*;

public class JInvServCostosDetallesSet extends JManejadorSet
{
	public JInvServCostosDetallesSet(HttpServletRequest request)
	{
		m_Select = " * FROM view_invserv_costos_detalles";
		m_PageSize = 50;
		this.request = request;
	}

	public view_invserv_costos_detalles getRow(int row)
	{
		return (view_invserv_costos_detalles)m_Rows.elementAt((getFloorRow() + row));
	}

	public view_invserv_costos_detalles getAbsRow(int row)
	{
		return (view_invserv_costos_detalles)m_Rows.elementAt(row);
	}

	@SuppressWarnings("unchecked")
	protected void BindRow()
	{
		try
		{
			view_invserv_costos_detalles pNode = new view_invserv_costos_detalles();

			pNode.setMes(m_RS.getByte("Mes"));
			pNode.setAno(m_RS.getInt("Ano"));
			pNode.setID_Tipo(m_RS.getString("ID_Tipo"));
			pNode.setID_Prod(m_RS.getString("ID_Prod"));
			pNode.setDescripcion(m_RS.getString("Descripcion"));
			pNode.setID_CC(m_RS.getString("ID_CC"));
			pNode.setNombre(m_RS.getString("Nombre"));
			pNode.setStatus(m_RS.getString("Status"));
			pNode.setExistenciaIni(m_RS.getFloat("ExistenciaIni"));
			pNode.setCostoPromIni(m_RS.getFloat("CostoPromIni"));
			pNode.setUltimoCostoIni(m_RS.getFloat("UltimoCostoIni"));
			pNode.setSaldoIni(m_RS.getFloat("SaldoIni"));
			pNode.setExistenciaFin(m_RS.getFloat("ExistenciaFin"));
			pNode.setCostoPromFin(m_RS.getFloat("CostoPromFin"));
			pNode.setUltimoCostoFin(m_RS.getFloat("UltimoCostoFin"));
			pNode.setSaldoFin(m_RS.getFloat("SaldoFin"));
			pNode.setCC_SaldoIni(m_RS.getFloat("CC_SaldoIni"));
			pNode.setCC_SaldoFin(m_RS.getFloat("CC_SaldoFin"));

			m_Rows.addElement(pNode);

		}
		catch(SQLException e)
		{
			e.printStackTrace();
			throw new RuntimeException(e.toString());
		}

	}

}
