<%@ include file="/WEB-INF/jsp/stdJspIncludes.jsp" %>

<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Welcome Page</title>
</head>

<body>

<%-- S T A N D A R D       H E A D E R  --%>
<%@ include file="/WEB-INF/jsp/stdHeader.jsp" %>

<h2>welcome.jsp</h2>

<br/>

<a href="${contextPath}/show/page1">Page 1</a><br/>
<a href="${contextPath}/show/page2">Page 2</a><br/>

<br/>
<br/>

<%-- S T A N D A R D       F O O T E R  --%>
<%@ include file="/WEB-INF/jsp/stdFooter.jsp" %>

</body>
</html>