<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!doctype html>
<html lang="en" >
<head>
  <title>${title }</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css"
    rel="stylesheet">
  <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.min.css"
    rel="stylesheet">
    
    <style>
    		.topcontainer {
    			margin-top : 50px;
    		}
    </style>
</head>

<body>
<div class="navbar navbar-fixed-top navbar-inverse">
    <div class="navbar-inner">
        <div class="container">
        <button type="button" class="btn btn-navbar"
                data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <!--  start of navbar entry -->
        <a class="brand" href="/"><i class="icon-filter icon-white"></i>
            ${title }
        </a>
        </div>
    </div>
</div>

<div class="container topcontainer">
	<div class="row-fluid">
		<h1>${subtitle}</h1>
		
		<c:if test="${uploaded_file != null}">
			<h4>You have uploaded ${uploaded_file }</h4>
		</c:if>
		
		<c:if test="${project_info != null}">
			<h4>Project ::  ${project_info }</h4>
		</c:if>

		<c:url value="/save" var="savefiles" />
		<form:form method="post" action="${savefiles }"
			modelattribute="uploadform" enctype="multipart/form-data">
			<label>Select File to Upload</label>
			<input type="file" name="file" />
			<input type="submit" value="upload" class="btn btn-primary" />
		</form:form>
	</div>
</div>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
</body>
</html>
