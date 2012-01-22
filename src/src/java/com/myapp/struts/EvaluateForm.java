/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Tolis
 */
public class EvaluateForm extends org.apache.struts.action.ActionForm {
    
    private double cost1, cost2, cost3;
    private int quantity1, quantity2, quantity3;
    private double result;
    //error message
    private String error;

    public double getCost1() {
        return cost1;
    }

    public void setCost1(double cost1) {
        this.cost1 = cost1;
    }

    public double getCost2() {
        return cost2;
    }

    public void setCost2(double cost2) {
        this.cost2 = cost2;
    }

    public double getCost3() {
        return cost3;
    }

    public void setCost3(double cost3) {
        this.cost3 = cost3;
    }

    public int getQuantity1() {
        return quantity1;
    }

    public void setQuantity1(int quantity1) {
        this.quantity1 = quantity1;
    }

    public int getQuantity2() {
        return quantity2;
    }

    public void setQuantity2(int quantity2) {
        this.quantity2 = quantity2;
    }

    public int getQuantity3() {
        return quantity3;
    }

    public void setQuantity3(int quantity3) {
        this.quantity3 = quantity3;
    }
    
    public void setError() {
        this.error = "<span style='color:red'>Please provide valid entries for all fields</span>";
    }

    public String getError() {
        return error;
    }
    
    public double getResult() {
        result = cost1*quantity1 + cost2*quantity2 + cost3*quantity3;
        return result;
    }

    /**
     *
     */
    public EvaluateForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        return errors;
    }
}
