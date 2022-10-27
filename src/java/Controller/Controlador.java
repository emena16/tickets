
package Controller;

import Config.Conexion;
import Entidad.Ticket;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
/**
 *
 * @author Jose Eduardo Mena
 */
public class Controlador {
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new  JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView(); 
    List datos;
    int id; 
    
    @RequestMapping("index.htm")
    public ModelAndView Listar(){
        String sql = "";
        sql = "SELECT * FROM ticket";
        datos = this.jdbcTemplate.queryForList(sql);
        datos.forEach(System.out::println);
        System.out.println("### Tamaño de la lista: "+datos.size());
        mav.addObject("lista",datos);
        
        //Generamos la lista de lo nuevos
        sql = "SELECT * FROM ticket INNER JOIN gravedadincidencia ON gravedadincidencia.idGravedadIncidencia = ticket.idGravedadIncidencia INNER JOIN tipoincidencia ON tipoincidencia.idTipoIncidencia =  ticket.idTipoIncidencia where idEstadoTicket = 1 ";
        datos = this.jdbcTemplate.queryForList(sql);
        datos.forEach(System.out::println);
        System.out.println("### Tamaño de la lista: "+datos.size());
        mav.addObject("nuevos",datos);
        
        //Generamos la lista de lo proceso
        sql = "SELECT * FROM ticket INNER JOIN gravedadincidencia ON gravedadincidencia.idGravedadIncidencia = ticket.idGravedadIncidencia INNER JOIN tipoincidencia ON tipoincidencia.idTipoIncidencia =  ticket.idTipoIncidencia where idEstadoTicket = 2";
        datos = this.jdbcTemplate.queryForList(sql);
        datos.forEach(System.out::println);
        System.out.println("### Tamaño de la lista: "+datos.size());
        mav.addObject("proceso",datos);
        
        //Generamos la lista de lo atendidos
        sql = "SELECT * FROM ticket INNER JOIN gravedadincidencia ON gravedadincidencia.idGravedadIncidencia = ticket.idGravedadIncidencia INNER JOIN tipoincidencia ON tipoincidencia.idTipoIncidencia =  ticket.idTipoIncidencia where idEstadoTicket = 3 ";
        datos = this.jdbcTemplate.queryForList(sql);
        datos.forEach(System.out::println);
        System.out.println("### Tamaño de la lista: "+datos.size());
        mav.addObject("atendido",datos);
        
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar(){
        mav.addObject(new Ticket());
        mav.setViewName("agregar");
        return mav;
    }
//    
    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Ticket p){
        String sql = "INSERT INTO persona(tituloTicket, fechaAlta, idUsuarioResponsable, idTipoIncidencia, idGravedadIncidencia, versionSoftware, descripcionProblema, idEstadoTicket) VALUES(?,?,?,?,?,?,?,?)";
//         this.jdbcTemplate.update(sql,);
        return new ModelAndView("redirect:/index.htm");
    }
    
    //Vamos a capturar la fila seleccionada mediante el metodo GET por URL
    @RequestMapping(value = "editar.htm", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "SELECT * FROM persona WHERE Id="+id;
//        System.out.println("### *** QUERY **** ### ");
        datos=this.jdbcTemplate.queryForList(sql);
//        datos.forEach(System.out::println);
        mav.addObject("lista",datos);
        mav.setViewName("editar");
        return mav;
    }
    @RequestMapping(value = "editar.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Ticket p){
        String sql ="UPDATE ticket SET idEstadoTicket = ? WHERE Id ="+id;
        this.jdbcTemplate.update(sql,p.getIdEstadoTicket());
        return new ModelAndView("redirect: /index.htm");
    }
//    
//    @RequestMapping("delete.htm")
//    public ModelAndView Delete(HttpServletRequest request){
//        id = Integer.parseInt(request.getParameter("id"));
//        String sql = "delete from persona where Id = "+id;
//        //ejecutamos el Query
//        this.jdbcTemplate.update(sql);
////        solicitamos la redireccion una vez hecho el delete
//        return new ModelAndView("redirect:/index.htm");     
//    }
    
}
