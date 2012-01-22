/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Tolis
 */
public class EvaluateAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "result";
    private static final String FAILURE = "failure";

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

        // extract user data
        EvaluateForm formBean = (EvaluateForm) form;
        int quantity1 = formBean.getQuantity1();
        int quantity2 = formBean.getQuantity2();
        int quantity3 = formBean.getQuantity3();

        // perform validation
        if (Double.isNaN(quantity1) || quantity1 < 0
                || Double.isNaN(quantity2) || quantity2 < 0
                || Double.isNaN(quantity3) || quantity3 < 0) {

            formBean.setError();

            return mapping.findForward(FAILURE);
        }

        return mapping.findForward(SUCCESS);
    }
}
