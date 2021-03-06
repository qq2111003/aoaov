var reg = function() {
	this.copyPass=$("#copyPass");
	this.pass=$("#txtPassword");
    var _this = this;
    this.oInputs = [];
    var _date = null;
    this.bln = true;
    this.market=null;
    this.errorTipDiv=$(".errorTipDiv2");
    this.regStructure = function(o) {
    
        this.oInputs.push(o);
        var oInp = $("#" + o.id);

        if (o.defaultMsg) {
            oInp.val(o.defaultMsg);
            oInp.addClass("defaultCss");
        }

        if (oInp.attr("type") == "password") {
            oInp.hide();
            _this.copyPass.show();
            _this.copyPass.addClass("defaultCss");
            _this.copyPass.val(o.defaultMsg);
			
			_this.copyPass.show();
            _this.copyPass.addClass("defaultCss");
            _this.copyPass.val(o.defaultMsg);

            _this.copyPass.focus(function() {
                $(this).removeClass("defaultCss");
                $(this).hide();
                oInp.show();
                oInp.focus();
            })
			
        }

        this.copyPass.focus(function() {
            $(this).hide();
            _this.pass.val("");
            _this.pass.show();
        })
		

        oInp.blur(function() {
            if($(this).val()=="")
            {   
                if (oInp.attr("type") == "password") {
                    oInp.hide();
                    _this.copyPass.show();
                    _this.copyPass.addClass("defaultCss");
                    _this.copyPass.val(o.defaultMsg);
                }else{
                    $(this).val(o.defaultMsg);
                    $(this).addClass("defaultCss");
                }
            }else{
                _this.checks(o);
            }
        })
        oInp.keydown(function(){
            $(this).removeClass("defaultCss")
        })
        this.copyPass.keydown(function(){
            _this.copyPass.hide();
            _this.pass.show();
            _this.pass.focus();
        })
        oInp.focus(function() {
            $(".inforDiv").hide();
            oInp.removeClass("txtRed");
            if (oInp.val() == o.rexMsg || oInp.val().indexOf("用户名已存在") != -1 || oInp.val() == o.defaultMsg || oInp.val().indexOf("验证码有误") != -1)
            { oInp.val(""); }
        })
    }
    this.checks = function(o,isForm) {
        var oInp = $("#" + o.id);
        if (o.isRex) {
            var oRex = new RegExp(o.rexTxt);
            if (!oRex.test(oInp.val())) {
                this.showMsg(o, o.rexMsg);
                if(oInp.val()!=o.defaultMsg){
                    oInp.removeClass("defaultCss");
                }
                if(oInp.attr('type')=='password'){
                    if(isForm=='form'){$("#copyPass").focus();}
                    
               }else{       
                    if(isForm=='form'){oInp.focus();}
               }
                
                return false;
                
            }
            else{
                if(isForm!="form"){
                  this.errorTipDiv.html("").hide();
                }
            }
        }



        if (oInp.attr("type") == "checkbox") {
            if (oInp.attr("checked")) {
                return true;
            }
            else {
                this.showMsg(o, o.tipMsg);
                return false;
            }
        }
		
		if(o.chkcompare){
			if($.trim(oInp.val())!=$.trim($("#"+o.compareid).val())){
				this.showMsg(o, "请再次输入账号！");
				return false;
			}
		}
		
        if (o.isAjax) {
            var async = isForm == 'form' ?  false : true;
            $.ajax({
                type: "GET",
                url: o.ajaxurl,
                cache: false,
                async:async,
                data: "data=" + oInp.val() + "&r=" + Math.random(),
                success: function(data) {
                    
                    if (data == 0) {
                        if (o.showSucceed && o.succeedMsg) {
                            _this.showMsg(o, o.succeedMsg)
                        }
                        return true;
                    }
                    else {
                        if (o.id == "txtValidateCode") {
                            $("#vcode").attr("src", "/HttpHandler/AuthCodeHandler.ashx?r=" + Math.random());
                        }
                        _this.showMsg(o, data);
                        if(isForm=='form'){oInp.focus();}                 
                        return false;
                    }
                }
            })
        }

    }
    this.showMsg = function(o, tipTxt) {
        var obj = $("#" + o.id);
        this.errorTipDiv.show().
        html(tipTxt);
        
        
    }
    this.getMarket=function(){
        var searchTxt=location.search;
        var txtEnd=searchTxt.indexOf("&")
        var txtStart=searchTxt.indexOf("market")
        if(txtEnd!=-1){
            this.market=searchTxt.substring(txtStart+7,txtEnd)
        }
        else{
            this.market=searchTxt.substring(txtStart+7)
        }
        
    }
    this.checkAll = function() {
        this.getMarket();
        this.errorTipDiv.html("").hide();
        $("#tipDiv").remove();
        var error = true;
        for (var i =0 ; i <this.oInputs.length; i++) {
            if (this.checks(this.oInputs[i],'form') == false) {
                error = false;
                break;
            }
        }
        return error;
    }
    this.reSet=function(){
      
      for(var i=0;i<this.oInputs.length;i++){
        
        if (this.oInputs[i].defaultMsg) {
            
            $("#"+this.oInputs[i].id).val(this.oInputs[i].defaultMsg);
            $("#"+this.oInputs[i].id).addClass("defaultCss");
            if ($("#"+this.oInputs[i].id).attr("type") == "password") {
                this.pass.hide();
                _this.copyPass.show();
                _this.copyPass.addClass("defaultCss");
                _this.copyPass.val(this.oInputs[i].defaultMsg);
            }
        }
        this.errorTipDiv.hide().val("");
         
      }
    }
}