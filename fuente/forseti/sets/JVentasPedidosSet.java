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

public class JVentasPedidosSet extends JManejadorSet
{
	public JVentasPedidosSet(HttpServletRequest request)
	{
		m_Select = " * FROM view_ventas_pedidos_modulo ";
		m_PageSize = 50;
		this.request = request;
	}

	public view_ventas_pedidos_modulo getRow(int row)
	{
		return (view_ventas_pedidos_modulo)m_Rows.elementAt((getFloorRow() + row));
	}

	public view_ventas_pedidos_modulo getAbsRow(int row)
	{
		return (view_ventas_pedidos_modulo)m_Rows.elementAt(row);
	}

	 
  @SuppressWarnings("unchecked")
  protected void BindRow()
	{
		try
		{
			view_ventas_pedidos_modulo pNode = new view_ventas_pedidos_modulo();

			pNode.setCliente(m_RS.getString("Cliente"));
			pNode.setFecha(m_RS.getDate("Fecha"));
			pNode.setID_Cliente(m_RS.getLong("ID_Cliente"));
			pNode.setID_Entidad(m_RS.getInt("ID_Entidad"));
			pNode.setID_Pedido(m_RS.getLong("ID_Pedido"));
			pNode.setMoneda(m_RS.getByte("Moneda"));
			pNode.setSimbolo(m_RS.getString("Simbolo"));
			pNode.setNumero(m_RS.getLong("Numero"));
			pNode.setReferencia(m_RS.getString("Referencia"));
			pNode.setStatus(m_RS.getString("Status"));
			pNode.setTC(m_RS.getFloat("TC"));
			pNode.setTotal(m_RS.getFloat("Total"));
			pNode.setFactura(m_RS.getInt("Factura"));
			pNode.setID_Vendedor(m_RS.getInt("ID_Vendedor"));
			pNode.setVendedorNombre(m_RS.getString("VendedorNombre"));
			pNode.setTipoEnlace(m_RS.getString("TipoEnlace"));
			pNode.setID_Factura(m_RS.getLong("ID_Factura"));
			pNode.setRef(m_RS.getString("Ref"));
			
			m_Rows.addElement(pNode);

		}
		catch(SQLException e)
		{
			e.printStackTrace();
			throw new RuntimeException(e.toString());
		}

	}

}
