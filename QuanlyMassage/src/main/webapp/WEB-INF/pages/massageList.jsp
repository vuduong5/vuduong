
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Massage List</title>
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
            <h3 class="panel-title">
                <div align="center"><b>Massage List</b> </div>
                <div align="right"><a href="createMassage">Add New Massage</a></div>
                <div align="left"><a href="users">Quan ly User</a></div>
                
            </h3>
        </div>
        <div class="panel-body">
            <c:if test="${empty massageList}">
                There are no Employees
            </c:if>
            <c:if test="${not empty massageList}">   
            
            	<form action="searchMassage">
            		<div class="row">
					  <div class="col-md-4">Search Employees: <input type='text' name='searchName' id='searchName'/> </div>
					  <div class="col-md-4"><input class="btn btn-success" type='submit' value='Search'/></div>
					</div>
            	</form>         	
            	            	
                <table class="table table-hover table-bordered">
                    <thead style="background-color: #bce8f1;">
                    <tr>
                        <th>Id</th>
                        <th>Ten</th>
                        <th>Dia chi</th>
                        <th>PR</th>
                        <th>Gia Goc</th>
                        <th>Gia Khuyen Mai</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${massageList}" var="mass">
                        <tr>
                        	<th><c:out value="${mass.id}"/></th>
                        	<th><c:out value="${mass.ten}"/></th>
                        	<th><c:out value="${mass.diachi}"/></th>
                        	<th><c:out value="${mass.PR}"/></th>
                        	<th><c:out value="${mass.giagoc}"/></th>
                        	<th><c:out value="${mass.giaKM}"/></th>
                        	 
                        	<th><a href="editMassage?id=<c:out value='${mass.id}'/>">Edit</a></th>
                        	<th><a href="deleteMassage?id=<c:out value='${mass.id}'/>">Delete</a></th>                         	
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>    
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    <script src="<c:url value="/resources/js/jquery-2.1.3.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    

</body>
 --%>
<body>
	<table border="1">
		<tr>
			<th ><a href="users"><p style="text-align: left;">Quản lý
						danh sách thành viên</p></a></th>
			<th><h1 style="text-align: center;">Bảng danh sách các cở
					sở</h1></th>
			<th><a href="createMassage"><p style="text-align: right;">Thêm
						mới cơ cở</p></a></th>
		</tr>
	</table>

	<table border="2" title="Bảng danh sách các cơ sở">
		<tr>
			<th>Mã cơ sở</th>
			<th>Tên cơ sở</th>
			<th>Địa chỉ</th>
			<th>Quảng cáo</th>
			<th>Giá gốc</th>
			<th>Giá khuyến mãi</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${massageList}" var="mass">
			<tr>
				<th><c:out value="${mass.id}" /></th>
				<th><c:out value="${mass.ten}" /></th>
				<th><c:out value="${mass.diachi}" /></th>
				<th><c:out value="${mass.PR}" /></th>
				<th><c:out value="${mass.giagoc}" /></th>
				<th><c:out value="${mass.giaKM}" /></th>

				<th><a href="editMassage?id=<c:out value='${mass.id}'/>">Edit</a></th>
				<th><a href="deleteMassage?id=<c:out value='${mass.id}'/>">Delete</a></th>
			</tr>
		</c:forEach>
		<tr></tr>
	</table>
</body>
</html>