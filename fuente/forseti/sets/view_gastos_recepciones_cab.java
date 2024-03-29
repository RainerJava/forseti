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


import java.sql.*;

public class view_gastos_recepciones_cab
{
	private long m_ID_Recepcion;
	private byte m_ID_Bodega;
	private String m_Nombre;
	private long m_ID_Acreedor;
	private long m_Numero;
	private Date m_FechaRecep;
	private byte m_Condicion;
	private String m_Obs;
	private float m_Importe;
	private float m_Descuento;
	private float m_SubTotal;
	private float m_IVA;
	private float m_Total;
	private String m_Direccion;
	private String m_CP;
	private String m_Tel;
	private String m_Poblacion;
	private String m_Colonia;
	private String m_RFC;

	public void setID_Recepcion(long ID_Recepcion)
	{
		m_ID_Recepcion = ID_Recepcion;
	}

	public void setID_Bodega(byte ID_Bodega)
	{
		m_ID_Bodega = ID_Bodega;
	}

	public void setNombre(String Nombre)
	{
		m_Nombre = Nombre;
	}

	public void setID_Acreedor(long ID_Acreedor)
	{
		m_ID_Acreedor = ID_Acreedor;
	}

	public void setNumero(long Numero)
	{
		m_Numero = Numero;
	}

	public void setFechaRecep(Date FechaRecep)
	{
		m_FechaRecep = FechaRecep;
	}

	public void setCondicion(byte Condicion)
	{
		m_Condicion = Condicion;
	}

	public void setObs(String Obs)
	{
		m_Obs = Obs;
	}

	public void setImporte(float Importe)
	{
		m_Importe = Importe;
	}

	public void setDescuento(float Descuento)
	{
		m_Descuento = Descuento;
	}

	public void setSubTotal(float SubTotal)
	{
		m_SubTotal = SubTotal;
	}

	public void setIVA(float IVA)
	{
		m_IVA = IVA;
	}

	public void setTotal(float Total)
	{
		m_Total = Total;
	}

	public void setDireccion(String Direccion)
	{
		m_Direccion = Direccion;
	}

	public void setCP(String CP)
	{
		m_CP = CP;
	}

	public void setTel(String Tel)
	{
		m_Tel = Tel;
	}

	public void setPoblacion(String Poblacion)
	{
		m_Poblacion = Poblacion;
	}

	public void setColonia(String Colonia)
	{
		m_Colonia = Colonia;
	}

	public void setRFC(String RFC)
	{
		m_RFC = RFC;
	}


	public long getID_Recepcion()
	{
		return m_ID_Recepcion;
	}

	public byte getID_Bodega()
	{
		return m_ID_Bodega;
	}

	public String getNombre()
	{
		return m_Nombre;
	}

	public long getID_Acreedor()
	{
		return m_ID_Acreedor;
	}

	public long getNumero()
	{
		return m_Numero;
	}

	public Date getFechaRecep()
	{
		return m_FechaRecep;
	}

	public byte getCondicion()
	{
		return m_Condicion;
	}

	public String getObs()
	{
		return m_Obs;
	}

	public float getImporte()
	{
		return m_Importe;
	}

	public float getDescuento()
	{
		return m_Descuento;
	}

	public float getSubTotal()
	{
		return m_SubTotal;
	}

	public float getIVA()
	{
		return m_IVA;
	}

	public float getTotal()
	{
		return m_Total;
	}

	public String getDireccion()
	{
		return m_Direccion;
	}

	public String getCP()
	{
		return m_CP;
	}

	public String getTel()
	{
		return m_Tel;
	}

	public String getPoblacion()
	{
		return m_Poblacion;
	}

	public String getColonia()
	{
		return m_Colonia;
	}

	public String getRFC()
	{
		return m_RFC;
	}


}

