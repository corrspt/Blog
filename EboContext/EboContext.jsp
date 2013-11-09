<%@page import="netgest.bo.runtime.EboContext"%>
<%@page import="netgest.bo.runtime.boObjectList"%>
<%@page import="netgest.bo.runtime.boObject"%>
<%@page import="netgest.bo.system.boApplication"%>
<%@page import="netgest.bo.system.boSession"%>
<%@page import="netgest.bo.system.boLoginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

boSession xeoSession = null;
EboContext ctx = null;
try {
	//Login with a default usrr
	xeoSession = boApplication.getDefaultApplication().boLogin("ROBOT",boLoginBean.getSystemKey());
	//Create a context for the request
	ctx = xeoSession.createRequestContext( request, response, null );
	//Add the request to the current request, so that everyone can use boApplication.currentContext().getEboContext()
	boApplication.currentContext().addEboContext( ctx );
	
	//Process the Request
	
	
	
} finally {
	//Close the resources, or you'll end up without database connections
	if (ctx != null){
		ctx.close();
	}
	if (xeoSession != null){
		xeoSession.closeSession();
	}
}

%>  