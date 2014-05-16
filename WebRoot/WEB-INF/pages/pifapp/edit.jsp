<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pifitm_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src=${pageContext.request.contextPath}/resources/js/My97DatePicker/WdatePicker.js></script>
<script type="text/javascript" src=${pageContext.request.contextPath}/resources/js/jquery-1.4.2.min.js></script>
  </head>
  
	<body>
		 <h3>修改应用码信息</h3>
      <div><form action="pifapp/edit" method="post" id="pifapp">
       <table>
                    <tr>
                     <td>应用码</td>
                      <td>
                         <input type="text" name="app_cde" maxlength="2" value="${pifapp.app_cde }">                 
                      </td>   
                      <td>应用描述</td>
                      <td>
                          <input type="text" name="app_nam" maxlength="36" value="${pifapp.app_cde }">
                      </td>                                        
                    </tr> 
                    <tr>
                      <td>应用简称</td>
                      <td>
                          <input type="text" name="app_snm" maxlength="6" value="${pifapp.app_cde }">
                      </td>
                       <td>应用符</td>
                      <td>
                          <input type="text" name="app_idt" maxlength="3">
                      </td>
                    </tr>
                    <tr>  
                      <td>应用类型</td>
                      <td>
                          <input type="text" name="app_typ" maxlength="1">
                      </td>     
                      <td>应用可用状态</td>
                      <td>
                          <select name="app_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y" ${pifapp.app_sts eq "Y"?"selected=true":"" }>可用</option>
                          <option value="N" ${pifapp.app_sts eq "N"?"selected=true":"" }>不可用</option> 
                         </select>
                      </td>                     
                    </tr>
                    <tr>
                      <td>应用启动窗口</td>
                      <td>
                           <input type="text" name="str_ext" maxlength="1" value="${pifapp.str_ext }">
                      </td>  
                      <td>应用关闭窗口</td>
                      <td>
                         <input type="text" name="dwn_ext" maxlength="1" value="${pifapp.dwn_ext }"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>应用重启出口</td>
                       <td>   
                          <input type="text" name="rst_ext" maxlength="1" value="${pifapp.rst_ext  }"/>                   
                       </td>  
                      <td>应用所用日历</td>
                      <td>
                           <input type="text" name="app_cal" maxlength="3" value="${pifapp.app_cal }"/> 
                      </td>                    
                    </tr>
                 <tr>
                      <td>应用可活动的系统模式</td>
                      <td> 
                        <select name="run_mod">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="D" ${pifapp.run_mod eq "D"?"selected=true":"" }>日间模式</option>
                          <option value="N" ${pifapp.run_mod eq "N"?"selected=true":"" }>夜间模式</option> 
                         </select>            
                      </td>
                      <td>应用可否在假期启动</td>
                      <td> 
                       <select name="run_hol">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y" ${pifapp.run_hol eq "Y"?"selected=true":"" }>可用</option>
                          <option value="N" ${pifapp.run_hol eq "N"?"selected=true":"" }>不可用</option> 
                         </select>  
                      </td>                      
                    </tr>
                 <tr>
                      <td>最后更新日期</td>
                      <td>
                         <input type="text" name="upt_dat" class="Wdate" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${pifapp.upt_dat }"/>" onClick="WdatePicker()"  readonly="readonly">
                      </td> 
                      <td>更新柜员</td>
                      <td>
                          <input type="text" name="upt_tlr" value="${pifapp.upt_tlr }"/>
                      </td>                    
                    </tr>
                        <tr>
                      <td>记录状态</td>
                      <td>
                          <select name="rec_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="P" ${pifapp.rec_sts eq "P"?"selected=true":"" }>有效</option>
                          <option value="I" ${pifapp.rec_sts eq "I"?"selected=true":"" }>无效</option> 
                          <option value="D" ${pifapp.rec_sts eq "D"?"selected=true":"" }>可以删除</option> 
                         </select>
                      </td>                                        
                    </tr>                    
                     <tr>
                      <td rowspan="2"><input type="submit" value="提交"/><input type="button" value="返回" onclick="javascript:history.go(-1);"/></td>                     
                    </tr>        
                </table>
          </form>
      </div>
	</body>
</html>