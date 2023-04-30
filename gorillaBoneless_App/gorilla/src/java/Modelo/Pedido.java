package Modelo;

import java.util.Date;
import java.util.List;

public class Pedido {

    private int id;
    private Cliente cliente;
    private List<Producto> productos;
    private Date fecha;
    private double total;

    public Pedido(int id, Cliente cliente, List<Producto> productos, Date fecha, double total) {
        this.id = id;
        this.cliente = cliente;
        this.productos = productos;
        this.fecha = fecha;
        this.total = total;
    }

    // getters y setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public List<Producto> getProductos() {
        return productos;
    }

    public void setProductos(List<Producto> productos) {
        this.productos = productos;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}
