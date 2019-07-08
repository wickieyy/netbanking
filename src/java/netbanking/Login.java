/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package netbanking;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author test
 */
public class Login extends ActionSupport{
    public String execute(){
        addActionMessage(SUCCESS);
        return "success";
    }
}
