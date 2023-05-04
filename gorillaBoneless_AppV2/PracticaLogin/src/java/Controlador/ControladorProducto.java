/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;
import Modelo.Producto;
import Modelo.ModeloProducto;
/**
 *
 * @author lv1822
 */
public class ControladorProducto {
    public String getProductos(){
        ModeloProducto mp = new ModeloProducto();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductos()){
            htmlcode += "<div class=\"col-sm-4\">\n" +
"							<div class=\"product-image-wrapper\">\n" +
"								<div class=\"single-products\">\n" +
"									<div class=\"productinfo text-center\">\n" +
"										<img class=\"img-fluid\" height=\"50\" width=\"50\" src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"										<h2>$"+producto.getPrecio()+"</h2>\n" +
"										<p>"+producto.getNombre()+"</p>\n" +
"										<a href=\"product-details.jsp?id="+producto.getId()+"\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver detalles</a>\n" +
"									</div>\n" +
"									<div class=\"product-overlay\">\n" +
"										<div class=\"overlay-content\">\n" +    
"										</div>\n" +
"									</div>\n" +
"								</div>\n" +

"							</div>\n" +
"						</div>";
        }        
        return htmlcode;        
    }
    
    
    public Producto getProducto(int id){
        return new ModeloProducto().getProducto(id);
    }
    
    public String getProductosHamburguesa(){
        ModeloProducto mp = new ModeloProducto();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductosHamburguesas()){
            htmlcode += "<div class=\"col-sm-4\">\n" +
"							<div class=\"product-image-wrapper\">\n" +
"								<div class=\"single-products\">\n" +
"									<div class=\"productinfo text-center\">\n" +
"										<img class=\"img-fluid\" height=\"250\" width=\"250\" src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"										<h2>$"+producto.getPrecio()+"</h2>\n" +
"										<p>"+producto.getNombre()+"</p>\n" +
"										<a href=\"product-details.jsp?id="+producto.getId()+"\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver detalles</a>\n " +
"									</div>\n" +
"									<div class=\"product-overlay\">\n" +
"										<div class=\"overlay-content\">\n" +    
"										</div>\n" +
"									</div>\n" +
"								</div>\n" +

"							</div>\n" +
"						</div>";
        }        
        return htmlcode;        
    }
    
    public String getProductosBebidas(){
        ModeloProducto mp = new ModeloProducto();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductosBebidas()){
            htmlcode += "<div class=\"col-sm-4\">\n" +
"							<div class=\"product-image-wrapper\">\n" +
"								<div class=\"single-products\">\n" +
"									<div class=\"productinfo text-center\">\n" +
"										<img class=\"img-fluid\" height=\"250\" width=\"250\" src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"										<h2>$"+producto.getPrecio()+"</h2>\n" +
"										<p>"+producto.getNombre()+"</p>\n" +
"										<a href=\"product-details.jsp?id="+producto.getId()+"\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver detalles</a>\n " +
"									</div>\n" +
"									<div class=\"product-overlay\">\n" +
"										<div class=\"overlay-content\">\n" +    
"										</div>\n" +
"									</div>\n" +
"								</div>\n" +

"							</div>\n" +
"						</div>";
        }        
        return htmlcode;        
    }
    
    public String getProductosPostres(){
        ModeloProducto mp = new ModeloProducto();
        String htmlcode = "";
        for(Producto producto : mp.getAllProductosPostres()){
            htmlcode += "<div class=\"col-sm-4\">\n" +
"							<div class=\"product-image-wrapper\">\n" +
"								<div class=\"single-products\">\n" +
"									<div class=\"productinfo text-center\">\n" +
"										<img class=\"img-fluid\" height=\"250\" width=\"250\" src=\""+producto.getImg()+"\" alt=\"\" />\n" +
"										<h2>$"+producto.getPrecio()+"</h2>\n" +
"										<p>"+producto.getNombre()+"</p>\n" +
"										<a href=\"product-details.jsp?id="+producto.getId()+"\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver detalles</a>\n " +
"									</div>\n" +
"									<div class=\"product-overlay\">\n" +
"										<div class=\"overlay-content\">\n" +    
"										</div>\n" +
"									</div>\n" +
"								</div>\n" +

"							</div>\n" +
"						</div>";
        }        
        return htmlcode;        
    }
}
