/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

/**
 *
 * @author Tolis
 */
public class RegisterUserForm extends org.apache.struts.action.ActionForm {
    
    private String name;


    public String getName() {
        return name;
    }

    public void setName(String string) {
        name = string;
    }

    
    public RegisterUserForm() {
        super();
        // TODO Auto-generated constructor stub
    }

}
