//
//	jQuery Validate example script
//
//	Prepared by David Cochran
//
//	Free for your use -- No warranties, no guarantees!
//

// Validate
// http://bassistance.de/jquery-plugins/jquery-plugin-validation/
// http://docs.jquery.com/Plugins/Validation/
// http://docs.jquery.com/Plugins/Validation/validate#toptions
$(document).ready(function(){
    /**
     * 自定义中文
     */
    jQuery.validator.addMethod("isChinese",function(value,element){
        return /^[\u2E80-\uFE4F]+$/.test(value);
    },"请输入中文");
    jQuery.validator.addMethod("isPhone",function(value,element){
        return  (value.trim()==""||/^[0-9]+$/.test(value));
    },"请输入数字");
    jQuery.validator.addMethod("isPwd",function(value,element){
        return /^[a-z0-9A-Z_]{6,15}$/.test(value);
    },"密码只能是6-15位的数字和字母的组合");
    jQuery.validator.addMethod("fullName", function(value, name){
        return  /^[\u4E00-\u9FA5\uF900-\uFA2D\w]+$/.test(value);
    }, "只能包括中文、英文、数字和下划线");
    jQuery.validator.addMethod("isDate",function(value,name){
        //这里只判断短日期 eg: 1986-03-01
        return /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/.test(value);
    },"日期格式不正确！");
    jQuery.validator.addMethod("isPostCode", function(value, name){
        return  ( value.trim()==""|| /^[0-9]{6}$/.test(value));
    }, "请输入正确的邮编");


}); // end document.ready