<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.lk.baidu.newUeditor.ActionEnter"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%

    request.setCharacterEncoding( "utf-8" );
	response.setHeader("Content-Type" , "text/html");
	
	String rootPath = application.getRealPath( "/" );
	
	//out.write( new ActionEnter( request, rootPath ).exec() );
	String result = new ActionEnter( request, rootPath ).exec();
	System.out.println("rootPath:===="+rootPath);
	String action = request.getParameter("action");
	if(action.equals("listimage") || action.equals("listfile")){
		rootPath = rootPath.replace("\\", "/");
		
        result = result.replaceAll(rootPath, "/");
	}
	out.write( result );
	
	
%>