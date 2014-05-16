<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src=${pageContext.request.contextPath}/resources/js/My97DatePicker/WdatePicker.js></script>
<script type="text/javascript" src=${pageContext.request.contextPath}/resources/js/jquery-1.4.2.min.js></script>
<script type="text/javascript">
  
  function verify(){
   var cde = document.getElementsByName("app_cde").item(0).value;
   
   var nam = document.getElementsByName("app_nam").item(0).value;
   
   
   var idt = document.getElementsByName("app_idt").item(0).value;
   
   var tlr = document.getElementsByName("upt_tlr").item(0).value;
   alert(cde+nam+idt+tlr);
   if(cde || nam || idt || tlr ==null){
      
      alert("请正确录入信息！");
       
       return false;
    
   }
   
    return true;
  
  }
</script>
</head>

<%
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName();
	
 %>
<body>
<h3>新增应用码</h3>
      <div><form action="add" method="post" id="pifapp" >
      <table>
                    <tr>
                     <td>应用码</td>
                      <td>
                         <input type="text" name="app_cde" maxlength="2">                 
                      </td>   
                      <td>应用描述</td>
                      <td>
                          <input type="text" name="app_nam" maxlength="36">
                      </td>                                        
                    </tr> 
                    <tr>
                      <td>应用简称</td>
                      <td>
                          <input type="text" name="app_snm" maxlength="6">
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
                          <option value="Y">可用</option>
                          <option value="N">不可用</option> 
                         </select>
                      </td>                     
                    </tr>
                    <tr>
                      <td>应用启动窗口</td>
                      <td>
                           <input type="text" name="str_ext" maxlength="1">
                      </td>  
                      <td>应用关闭窗口</td>
                      <td>
                         <input type="text" name="dwn_ext" maxlength="1"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>应用重启出口</td>
                       <td>   
                          <input type="text" name="rst_ext" maxlength="1"/>                   
                       </td>  
                      <td>应用所用日历</td>
                      <td>
                           <input type="text" name="app_cal" maxlength="3"/> 
                      </td>                    
                    </tr>
                 <tr>
                      <td>应用可活动的系统模式</td>
                      <td> 
                        <select name="run_mod">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="D">日间模式</option>
                          <option value="N">夜间模式</option> 
                         </select>            
                      </td>
                      <td>应用可否在假期启动</td>
                      <td> 
                       <select name="run_hol">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y">可用</option>
                          <option value="N">不可用</option> 
                         </select> 
                      </td>                      
                    </tr>
                 <tr>
                      <td>最后更新日期</td>
                      <td>
                         <input type="text" name="upt_dat" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
                      </td> 
                      <td>更新柜员</td>
                      <td>
                          <input type="text" name="upt_tlr"/>
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