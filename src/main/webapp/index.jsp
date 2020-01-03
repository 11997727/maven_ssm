<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/4
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="statics/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="statics/jquery-3.4.1.min.js"></script>
<script src="statics/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body class="container">


<div class="page-header  col-md-offset-5">
    <h1>BUG列表</h1>
</div>


<form id="formId" action="selectDetail.action" method="post">
    <div class="row" >


        <div class="col-md-2 ">

            <select id="projectId" name="projectId" class="form-control">


                <option value="" selected="selected">全部</option>
                <c:forEach items="${requestScope.requestProjectList.data}" var="project" >
                    <option value="${project.id}"    <c:if test="${requestScope.requestMap.projectId==project.id}">selected="selected" </c:if>  >${project.name} </option>
                </c:forEach>


            </select>
        </div>
        <span class="input-group-btn">
						<button id="btn" class="btn btn-default" type="submit">
							Go!
						</button>

			</span>
        <span class="input-group-btn">

        <a class="btn btn-default" href="selectAllProject.action">新增</a>
			</span>


    </div>
</form>





<table class="table table-bordered">
    <thead>
    <tr>

        <th>BUG编号</th>
        <th>严重性</th>
        <th>标题</th>
        <th>报告人</th>
        <th>报告时间</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${requestScope.requestMap.data}" var="dtail">
        <tr>
            <td>${dtail.id}</td>
            <c:if test="${dtail.severity==1}">
                <td>文字错误</td>
            </c:if>
            <c:if test="${dtail.severity==2}">
                <td>次要错误</td>
            </c:if>
            <c:if test="${dtail.severity==3}">
                <td>严重错误</td>
            </c:if>
            <td>${dtail.title}</td>


            <td>${dtail.reportUser}</td>
            <td><fmt:formatDate value="${dtail.createDte}" pattern="yyyy年MM月dd HH时mm分ss秒"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>


</body>

</html>
