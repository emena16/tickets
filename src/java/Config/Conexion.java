/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author eddy_
 */
public class Conexion {
    public DriverManagerDataSource Conectar(){
        DriverManagerDataSource dataSourse = new DriverManagerDataSource();
        dataSourse.setDriverClassName("com.mysql.jdbc.Driver");
        dataSourse.setUrl("jdbc:mysql://localhost:3306/tickets");
        dataSourse.setUsername("root");
        dataSourse.setPassword("");
        return dataSourse;
    }
}
