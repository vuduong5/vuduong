<%--
  User: Ranga Reddy
  Date: 1/27/2015
  Time: 9:48 PM
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Ranga Reddy">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Information</title>
<!-- Bootstrap CSS -->
<%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">
.myrow-container {
	margin: 20px;
}
</style>
</head>
<%-- <body class=".container-fluid">
	<div class="container myrow-container">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">Employee Details</h3>
			</div>
			<div class="panel-body">
				<form:form id="massageRegisterForm" cssClass="form-horizontal"
					modelAttribute="massage" method="post" action="saveMassage">

					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="ten">Ten</form:label>
						</div>
						<div class="col-xs-6">
							<form:hidden path="id" value="${massageObject.id}" />
							<form:input cssClass="form-control" path="ten"
								value="${massageObject.ten}" />
						</div>
					</div>

					<div class="form-group">
						<form:label path="diachi" cssClass="control-label col-xs-3">diachi</form:label>
						<div class="col-xs-6">
							<form:input cssClass="form-control" path="diachi"
								value="${massageObject.diachi}" />
						</div>
					</div>

					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="PR">PR</form:label>
						</div>
						<div class="col-xs-6">
							<form:input cssClass="form-control" path="PR"
								value="${massageObject.PR}" />
						</div>
					</div>
					
					
					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="giagoc">Gia goc</form:label>
						</div>
						<div class="col-xs-6">
							<form:input cssClass="form-control" path="giagoc"
								value="${massageObject.giagoc}" />
						</div>
					</div>
					
					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="giaKM">Gia khuyen mai</form:label>
						</div>
						<div class="col-xs-6">
							<form:input cssClass="form-control" path="giaKM"
								value="${massageObject.giaKM}" />
						</div>
					</div>
					

					<div class="form-group">
						<div class="row">
							<div class="col-xs-4"></div>
							<div class="col-xs-4">
								<input type="submit" id="saveMassage" class="btn btn-primary"
									value="Save" onclick="return submitMassageForm();" />
							</div>
							<div class="col-xs-4"></div>
						</div>
					</div>

				</form:form>
			</div>
		</div>
	</div>
 --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<body>

	<form:form id="massageRegisterForm" modelAttribute="massage"
		method="post" action="saveMassage">


		<form:label path="ten">Ten</form:label>

		<form:hidden path="id" value="${massageObject.id}" />
		<form:input path="ten" value="${massageObject.ten}" />


		<form:label path="diachi">diachi</form:label>

		<form:input path="diachi" value="${massageObject.diachi}" />
	
			<form:label path="PR">PR</form:label>
			<form:input path="PR" value="${massageObject.PR}" />



			<form:label path="giagoc">Gia goc</form:label>
			<form:input path="giagoc"
				value="${massageObject.giagoc}" />


			<form:label path="giaKM">Gia khuyen mai</form:label>
			<form:input path="giaKM" value="${massageObject.giaKM}" />



			<input type="submit" id="saveMassage" value="Save"
				onclick="return submitMassageForm();" />
	</form:form>
	<script type="text/javascript">
		function submitEmployeeForm() {				
			
		    // getting the employee form values
		    var name = $('#ten').val().trim();
		    var age = $('#diachi').val().trim();
		    var salary = $('#PR').val().trim();
		    if(name.length ==0) {
		        alert('Please enter name');
		        $('#ten').focus();
		        return false;
		    }
	
		    if(diachi.length < 0) {
		        alert('Please enter proper diachi');
		        $('#diachi').focus();
		        return false;
		    }
	
		    if(salary.length < 0) {
		        alert('Please enter proper PR');
		        $('#PR').focus();
		        return false;
		    }
		    return true;
		    if(giaKM < 0) {
		        alert('Please enter giaKM');
		        $('#giaKM').focus();
		        return false;
		    }
		    if(giagoc < 0) {
		        alert('Please enter gia goc');
		        $('#giagoc').focus();
		        return false;
		    }
		};	
	</script>

</body>
</html>