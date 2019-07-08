/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package netbanking;

import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Database {
   
    Connection getConnection(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/netbanking", "wickie", "wickie");
            return connection;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connection;
    }
    void insertUserDetails(String userName, String accountNumber, String cifNumber,int branchCode, String password, String mobileNumber,String securityQuestion, String securityAnswer) {
        Connection connection = getConnection();
        try {
            System.out.println("ZZZ"+branchCode);
            PreparedStatement ps = connection.prepareStatement("insert into account_holders(user_name,account_number,cif_number,branch_code,mobile_number,password,security_question,security_answer) values(?,?,?,?,?,?,?,?)");
            ps.setString(1, userName);
            ps.setString(2, accountNumber);
            ps.setString(3, cifNumber);
            ps.setInt(4, branchCode);
            ps.setString(5, mobileNumber);
            ps.setString(6, password);
            ps.setString(7, securityQuestion);
            ps.setString(8, securityAnswer);          
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
