/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Tolis
 */
public class RegisterUserAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        RegisterUserForm formBean = (RegisterUserForm)form;
        String name = formBean.getName();
        
        System.out.println(name);
        
        if((name==null) || name.isEmpty()) {
            formBean.setName("Guest");
        }
        
        request.getServletContext().setAttribute("user", formBean.getName());
        request.getSession().setAttribute("user", formBean.getName());
        
        System.out.println(request.getSession().getAttribute("user"));
        
        return mapping.findForward(SUCCESS);
    }
}
