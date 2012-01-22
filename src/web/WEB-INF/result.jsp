<%-- 
    Document   : result
    Created on : Jan 14, 2012, 7:11:59 PM
    Author     : Tolis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
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
    </head>
    <body>
        <c:set var="quantity1" value="${param.quantity1}" scope="session"/>
        <c:set var="quantity2" value="${param.quantity2}" scope="session"/>
        <c:set var="quantity3" value="${param.quantity3}" scope="session"/>
        <h1>Welcome to myMarket</h1>
        <div class="user">
            <c:if test="${user != null}">
                <span class="welcome">Welcome <c:out value="${user}" /></span>
            </c:if>
        </div>
        <div class="content">
            <table class="sample">
                <tr>
                    <th scope="col" class="nobg">Items</th>
                    <th scope="col">Cost</th>
                    <th scope="col">Quantity</th>
                </tr>
                <tr>
                    <th scope="row" class="spec">Coffee</th>
                    <td><bean:write name="EvaluateForm" property="cost1" /></td>
                    <td><bean:write name="EvaluateForm" property="quantity1" /></td>
                </tr>
                <tr>
                    <th scope="row" class="specalt">Sugar</th>
                    <td class="alt"><bean:write name="EvaluateForm" property="cost2" /></td>
                    <td class="alt"><bean:write name="EvaluateForm" property="quantity2" /></td>
                </tr>
                <tr>
                    <th scope="row" class="spec">Milk</th>
                    <td><bean:write name="EvaluateForm" property="cost3" /></td>
                    <td><bean:write name="EvaluateForm" property="quantity3" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><bean:write name="EvaluateForm" property="result" /></td>
                </tr>
            </table>
            <a href="index.jsp">Change Shopping cart</a>
        </div>
    </body>
</html>
