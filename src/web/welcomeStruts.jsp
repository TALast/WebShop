<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="welcome.title"/></title>
        <style type="text/css">
            body {
                color: #4f6b72;
                background: #E6EAE9;
            }

            div.content {
                width: 450px;
                height: 400px;
                margin-left: auto;
                margin-right: auto;
                margin-top: 30px;
                background-color: #E6EAE9;
                border:0px;
                padding-top: 10px;
                text-align: left;
                color: #fff;
            }
            th {
                font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica,
                    sans-serif;
                color: #6D929B;
                border-right: 1px solid #C1DAD7;
                border-bottom: 1px solid #C1DAD7;
                border-top: 1px solid #C1DAD7;
                letter-spacing: 2px;
                text-transform: uppercase;
                text-align: left;
                padding: 6px 6px 6px 12px;
                background: #CAE8EA url(http://www.duoh.com/csstutorials/csstables/images/bg_header.jpg) no-repeat;
            }
            th.nobg {
                border-top: 0;
                border-left: 0;
                border-right: 1px solid #C1DAD7;
                background: none;
            }

            th.spec {	
                border-left: 1px solid #C1DAD7;
                border-top: 0;
                background: #fff;
                font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica,
                    sans-serif;
            }

            th.specalt {
                border-left: 1px solid #C1DAD7;
                border-top: 0;
                background: #f5fafa;
                font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica,
                    sans-serif;
                color: #B4AA9D;
            }

            td {
                border-right: 1px solid #C1DAD7;
                border-bottom: 1px solid #C1DAD7;
                background: #fff;
                padding: 6px 6px 6px 12px;
                color: #6D929B;
            }


            td.alt {
                background: #F5FAFA;
                color: #B4AA9D;
            }
        </style>
        <html:base/>
    </head>
    <body>
        <h1>Welcome to myMarket</h1>

        <div class="user">
            <c:if test="${user == null}">
                <html:form action="/registerUser">
                    <fieldset>
                        <legend>Enter your name</legend>
                        <html:text property="name" />
                        <html:submit value="Register"/>
                    </fieldset>
                </html:form>
            </c:if>
            <c:if test="${user != null}">
                <span class="welcome">Welcome ${user}</span>
            </c:if>
        </div>
        <div class="content">
            <html:form action="/evaluate">
                <bean:write name="EvaluateForm" property="error" filter="false"/>&nbsp;
                <table class="sample">
                    <tr>
                        <th scope="col" class="nobg">Item</th>
                        <th scope="col">Cost</th>
                        <th scope="col">Quantity</th>
                    </tr>
                    <tr>
                        <th scope="row" class="spec">Coffee</th>
                        <td>${initParam.Coffee}<html:hidden property="cost1" name="cost1" value="${initParam.Coffee}"/></td>
                        <td><html:text property="quantity1" name="quantity1" value="${sessionScope.quantity1}"/></td>
                    </tr>
                    <tr>
                        <th scope="row" class="specalt">Sugar</th>
                        <td class="alt">${initParam.Sugar}<html:hidden property="cost2" name="cost2" value="${initParam.Sugar}"/></td>
                        <td class="alt"><html:text property="quantity2" name="quantity2" value="${sessionScope.quantity2}"/></td>
                    </tr>
                    <tr>
                        <th scope="row" class="spec">Milk</th>
                        <td>${initParam.Milk}<html:hidden property="cost3" name="cost3" value="${initParam.Milk}"/></td>
                        <td><html:text property="quantity3" name="quantity3" value="${sessionScope.quantity3}"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><html:submit value="Evaluate"/></td>
                    </tr>
                </table>

            </html:form>
        </div>
        <a href="http://apnastos.wordpress.com/2012/01/22/project-4-extending-project-3-and-use-of-struts/">Read report</a>
        <a href="">View Source</a>
    </body>
</html:html>
