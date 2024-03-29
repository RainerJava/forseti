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

public class JPermisosGrupoSet extends JManejadorSet
{
	public JPermisosGrupoSet(HttpServletRequest request)
	{
		m_Select = " * FROM VIEW_NOM_PERMISOS_GRUPO";
		m_PageSize = 50;
		this.request = request;
	}

	public VIEW_PERMISOS_GRUPO getRow(int row)
	{
		return (VIEW_PERMISOS_GRUPO)m_Rows.elementAt((getFloorRow() + row));
	}

	public VIEW_PERMISOS_GRUPO getAbsRow(int row)
	{
		return (VIEW_PERMISOS_GRUPO)m_Rows.elementAt(row);
	}

	 
  @SuppressWarnings("unchecked")
  protected void BindRow()
	{
		try
		{
			VIEW_PERMISOS_GRUPO pNode = new VIEW_PERMISOS_GRUPO();

			pNode.setID_Compania(m_RS.getByte("ID_Compania"));
			pNode.setID_Sucursal(m_RS.getByte("ID_Sucursal"));
			pNode.setCompania_Sucursal(m_RS.getString("sCompania_Sucursal"));
			pNode.setID_Movimiento(m_RS.getInt("ID_Movimiento"));
			pNode.setID_FechaMovimiento(m_RS.getDate("ID_FechaMovimiento"));
			pNode.setDescripcion(m_RS.getString("Descripcion"));
			pNode.setDesde(m_RS.getDate("Desde"));
			pNode.setHasta(m_RS.getDate("Hasta"));
			pNode.setDiasCompletos(m_RS.getBoolean("DiasCompletos"));
			pNode.setNum_de_Dias(m_RS.getInt("Num_de_Dias"));
			pNode.setNum_de_Horas(m_RS.getFloat("Num_de_Horas"));
			pNode.setTiempo_por_pagar(m_RS.getFloat("Tiempo_por_pagar"));

			m_Rows.addElement(pNode);

		}
		catch(SQLException e)
		{
			e.printStackTrace();
			throw new RuntimeException(e.toString());
		}

	}

}
