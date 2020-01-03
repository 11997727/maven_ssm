<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/4
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet"
      href="statics/bootstrap-3.3.7-dist/css/bootstrap.min.css">
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
    <h1>添加BUG</h1>
</div>
<form id="formOne" action="add.action" method="POST" >
    <table class="table table-bordered">
        <tbody>
        <tr>
            <td>所属项目</td>
            <td cplspan="2">
                <div class="form-group">
                    <label for="projectId"></label>
                    <select  name="projectId" id="projectId"  class="form-control">
                        <option value="0" selected="selected">请选择</option>
                        <c:forEach items="${requestScope.requestProjectList.data}" var="priject">
                            <option value="${priject.id}" >${priject.name}</option>
                        </c:forEach>


                    </select>

                </div>
            </td>
        </tr>
        <tr>
            <td>严重性</td>
            <td cplspan="2">
                <div class="form-group">
                    <label for="severity"></label>
                    <select  name="severity" id="severity"  class="form-control">
                        <option value="0" selected="selected">请选择</option>
                        <option value="1" >文字错误</option>
                        <option value="2">次要错误</option>
                        <option value="3">严重错误</option>
                    </select>

                </div>
            </td>
        </tr>
        <tr>
            <td>BUG标题</td>
            <td cplspan="2"><input type="text" name="title" id="title"
                                   value=""></td>

        </tr>

        <tr>
            <td>报告人</td>
            <td cplspan="2"><input type="text" name="reportUser" id="reportUser"
                                   value=""></td>

        </tr>



        </tbody>
    </table>
</form>
<div class="row">
    <div class="col-md-2 ">
        <div class="input-group">
            <button id="btn" class="btn btn-default">提交</button>
        </div>
    </div>
    <div class="col-md-2 ">
        <div class="input-group">
            <form action="selectDetail.action"
                  method="post">
                <input type="submit" class="btn btn-default" value="返回"/>
            </form>
        </div>
    </div>

</div>
<span id="msg" hidden>${requestScope.status}</span>
</body>
<script type="text/javascript">
    $(function () {


        var $msg=$('#msg').text()
        if($msg!=null&&$msg!=''){
            alert($msg)
        }

        $('#btn').click(function () {
            go()
        })
    })

    function go() {
        var $title= $('#title').val()
        var $reportUser = $('#reportUser').val()
        var $projectId = $('#projectId').val()
        var $severity = $('#severity').val()

        if ($projectId==0) {
            alert('请选择项目')
            return false;
        }
        if ($severity==0) {
            alert('请选择严重性')
            return false;
        }

        if ($title == "" || $title == null) {
            alert('标题不能为空')
            return false;
        }
        if ($reportUser == "" || $reportUser == null) {
            alert('报告人不能为空')
            return false;
        }

        $('#formOne').submit()
    }
</script>
</html>
