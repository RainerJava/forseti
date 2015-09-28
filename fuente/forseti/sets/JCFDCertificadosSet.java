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

public class JCFDCertificadosSet extends JManejadorSet
{
	public JCFDCertificadosSet(HttpServletRequest request)
	{
		m_Select = " * FROM TBL_CFD_CERTIFICADOS";
		m_PageSize = 50;
		this.request = request;
	}

	public TBL_CFD_CERTIFICADOS getRow(int row)
	{
		return (TBL_CFD_CERTIFICADOS)m_Rows.elementAt((getFloorRow() + row));
	}

	public TBL_CFD_CERTIFICADOS getAbsRow(int row)
	{
		return (TBL_CFD_CERTIFICADOS)m_Rows.elementAt(row);
	}

	 
  @SuppressWarnings("unchecked")
  protected void BindRow()
	{
		try
		{
			TBL_CFD_CERTIFICADOS pNode = new TBL_CFD_CERTIFICADOS();

			pNode.setCFD_NoCertificado(m_RS.getString("CFD_NoCertificado"));
			pNode.setCFD_ArchivoCertificado(m_RS.getString("CFD_ArchivoCertificado"));
			pNode.setCFD_CaducidadCertificado(m_RS.getDate("CFD_CaducidadCertificado"));
			pNode.setCFD_HoraCaducidadCertificado(m_RS.getTime("CFD_CaducidadCertificado"));
			pNode.setCFD_ArchivoLLave(m_RS.getString("CFD_ArchivoLLave"));
			pNode.setCFD_ClaveLLave(m_RS.getString("CFD_ClaveLLave"));
			
			m_Rows.addElement(pNode);

		}
		catch(SQLException e)
		{
			e.printStackTrace();
			throw new RuntimeException(e.toString());
		}

	}

}
