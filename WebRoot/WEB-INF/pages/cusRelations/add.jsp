<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <h3>新增银行卡</h3>
      <div><form action="cusRelations/add" method="post" id="cusRelations">
      <table>
                    <tr>
                     <td>功能</td>
                      <td>
                          <select name="usage">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="1">建立</option>
                           <option value="2">修改</option>
                           <option value="3">删除</option>
                           <option value="4">查询</option>
                           <option value="5">浏览</option>
                       </select>                   
                      </td>   
                      <td>客户号</td>
                      <td>
                          <input type="text" name="cus_code">
                      </td>                                        
                    </tr> 
                    <tr>
                      <td>客户名称</td>
                      <td>
                          <input type="text" name="cus_name">
                      </td>  
                      <td>对方客户号</td>
                      <td>
                          <input type="text" name="other_cus_code">
                      </td>                     
                    </tr>
                    <tr>
                      <td>对方客户名称</td>
                      <td>
                           <input type="text" name="other_cus_name">
                      </td>  
                      <td>证件种类</td>
                      <td>
                         <input type="text" name="certificate"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>证件号码</td>
                       <td>   
                          <input type="text" name="certificate_code"/>                   
                       </td>  
                      <td>客户地址</td>
                      <td>
                           <input type="text" name="cus_address"/> 
                      </td>                    
                    </tr>
                 <tr>
                      <td>客户电话</td>
                      <td>
                        <input type="text" name="cus_phone"/>             
                      </td>
                      <td>关系代码</td>
                      <td> 
                          <select name="relp_code">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="001">董事</option>
                           <option value="901">认知董事的公司</option>
                           <option value="002">高级管理人员</option>
                           <option value="902">受管理公司</option>
                           <option value="003">控股东</option>
                           <option value="903">受控公司</option>
                           <option value="004">总公司</option>
                           <option value="904">分支公司</option>
                           <option value="005">联营公司</option>
                           <option value="905">联营控股公司</option>
                           <option value="006">少数股东</option>
                           <option value="906">少数股权公司</option>
                           <option value="007">独资出资人</option>
                           <option value="907">独资公司</option>
                           <option value="008">合伙人</option>
                           <option value="908">合伙公司</option>
                           <option value="010">夫妻（夫）</option>
                           <option value="910">夫妻（妻）</option>
                           <option value="011">子女的父母</option>
                           <option value="911">父母的子女</option>
                           <option value="012">清盘人</option>
                           <option value="912">清盘公司</option>
                           <option value="013">信托人</option>
                           <option value="913">受益人</option>
                           <option value="014">遗产承办人</option>
                           <option value="914">死亡人</option>
                           <option value="015">遗产执行人</option>
                           <option value="915">死亡人</option>
                       </select> 
                      </td>                      
                    </tr>
                <tr>
                      <td>启用日期</td>
                      <td>
                        <input type="text" name="start_code" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
                      </td>                     
                    </tr>
                <tr>
                      <td>最后更新日期</td>
                      <td>
                         <input type="text" name="udt_dat" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
                      </td> 
                      <td>更新柜员</td>
                      <td>
                          <input type="text" name="udt_clr"/>
                      </td>                    
                    </tr>
                 <tr>
                      <td>使用状态</td>
                      <td>
                         <select name="use_status">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y">使用</option>
                          <option value="N">当前未使用</option> 
                         </select>
                      </td>                     
                    </tr> 
                        <tr>
                      <td>记录状态</td>
                      <td>
                          <select name="rec_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="P">有效</option>
                          <option value="I">无效</option> 
                          <option value="D">可以删除</option> 
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
