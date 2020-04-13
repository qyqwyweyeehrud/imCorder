<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<h3> ${msg }</h3>
	<form name='frm' method='post'>
		<input type='hidden' name='findstr' value='${(empty p.findStr)? param.findStr : p.findStr }'/>
		<input type='hidden' name='nowPage' value='${(empty p.nowPage)? param.nowPage : p.nowPage }'/>
	</form>
	<script>
		alert('${msg}');
	</script>
	