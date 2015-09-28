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

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import forseti.JManejadorSet;

public class JContaPolizasSetTiposV2 extends JManejadorSet
{
	public JContaPolizasSetTiposV2(HttpServletRequest request)
	{
		m_Select = " * FROM view_cont_polizas_tipos ";
		m_PageSize = 50;
		this.request = request;
	}

	public view_cont_polizas_tipos getRow(int row)
	{
		return (view_cont_polizas_tipos)m_Rows.elementAt((getFloorRow() + row));
	}

	public view_cont_polizas_tipos getAbsRow(int row)
	{
		return (view_cont_polizas_tipos)m_Rows.elementAt(row);
	}

	 
  @SuppressWarnings("unchecked")
  protected void BindRow()
	{
		try
		{
			view_cont_polizas_tipos pNode = new view_cont_polizas_tipos();

			pNode.setID_Tipo(m_RS.getString("ID_Tipo"));
			pNode.setNumero(m_RS.getLong("Numero"));
			pNode.setFormato(m_RS.getString("Formato"));
			pNode.setDescripcion(m_RS.getString("Descripcion"));

			m_Rows.addElement(pNode);

		}
		catch(SQLException e)
		{
			e.printStackTrace();
			throw new RuntimeException(e.toString());
		}

	}

}
