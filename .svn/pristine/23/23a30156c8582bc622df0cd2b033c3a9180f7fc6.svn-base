 jQuery.validator.addMethod("workhours", function(val, element) { 
	            	var bool = false;
	            	var one = $(element).parent().find('input')[0].value;//获取开始时间
	    			var two = $(element).parent().find('input')[1].value;//获取结束时间
	    			if("" != one  && ""!= two){
	    				var date1 ;
	    				var date2 ;
	    				var type1 = typeof one, type2 = typeof two;
	    	            if (type1 == 'string')
	    	                date1 = stringToTime(one);
	    	            else if (one.getTime)
	    	                date1 = one.getTime();
	    	            if (type2 == 'string')
	    	                date2 = stringToTime(two);
	    	            else if (two.getTime)
	    	               	date2 = two.getTime();
	    	            var hours = (date2 - date1) / (1000 * 60 * 60 * 24);
	    	            var hh = (hours+1)*24 ;
	    	            
	    	            if(val <= hh ){
		                	bool = true;
		                }
	    			}
	                return bool;
	            }, $.validator.format("工时不得超过计划最大工时"));		

		
        //字符串转成Time所需方法 
        function stringToTime(string) {
            var f = string.split(' ', 2);
            var d = (f[0] ? f[0] : '').split('-', 3);
            var t = (f[1] ? f[1] : '').split(':', 3);
            return (new Date(
           parseInt(d[0], 10) || null,
           (parseInt(d[1], 10) || 1) - 1,
            parseInt(d[2], 10) || null,
            parseInt(t[0], 10) || null,
            parseInt(t[1], 10) || null,
            parseInt(t[2], 10) || null
            )).getTime();
        }
        
        
        jQuery.validator.addMethod("noact", function(val, element) { 
        	var boole = false;
        	var input_hidden_v =$(element).parent().find("input[type='hidden']")[0].value;
        	var span_id = $(element).attr("hhh");
        	var one_ = parseInt(val);
        	var two_ = parseInt(input_hidden_v);
        	if(null != one_ && null != two_){
        		if(one_ <= two_){
        			$("#"+("span_one_"+span_id)).show();
        			boole = true;
        		}else{
        			
        			$("#"+("span_one_"+span_id)).hide();
        		}
        	}
            return boole;
        }, $.validator.format("工时不得超过已录入计划工时"));	
        
        jQuery.validator.addMethod("noout", function(val, element) { 
        	var boole = false;
        	var input_hidden_v =$(element).parent().find("input[type='hidden']")[0].value;
        	var span_id = $(element).attr("ttt");
        	/*var span_id = $(element).next().next().find("span")[0].id;*/
        	var one_ = parseInt(val);
        	var two_ = parseInt(input_hidden_v);
        	if(null != one_ && null != two_){
        		if(one_ <= two_){
        			$("#"+("span_two_"+span_id)).show();
        			boole = true;
        		}else{
        			$("#"+("span_two_"+span_id)).hide();
        		}
        	}
            return boole;
        }, $.validator.format("工时不得超过已录入实际工时"));	
        
        jQuery.validator.addMethod("digits_one", function(val, element) { 
        	var boole = false;
        	var span_id = $(element).attr("hhh");
        	var int_ =/^[1-9]\d*$/;
        	boole = int_.test(val);
        	if(boole == true){
        		$("#"+("span_one_"+span_id)).show();
        		return boole;
        	}else{
        		$("#"+("span_one_"+span_id)).hide();
        		return boole;
        	}
        }, $.validator.format("只能输入正整数"));	
        
        
        jQuery.validator.addMethod("digits_two", function(val, element) { 
        	var boole = false;
        	var span_id = $(element).attr("ttt");
        	var int_ =/^[1-9]\d*$/;
        	boole = int_.test(val);
        	if(boole == true){
        		$("#"+("span_two_"+span_id)).show();
        		return boole;
        	}else{
        		$("#"+("span_two_"+span_id)).hide();
        		return boole;
        	}
        }, $.validator.format("只能输入正整数"));
        
        