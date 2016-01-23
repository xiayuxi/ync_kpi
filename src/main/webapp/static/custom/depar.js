var startPlugin = {
		basePath:"",
		init:function(basePath){
			startPlugin.basePath = basePath;
		},
		startInit:function(){
			startPlugin.startInitParam({
			})
		},
		startInitParam:function(param){
			param = param?param:{};
			var d_id = param.departmentId ? param.departmentId : null;
			
			
			$.ajax({ 
		        type: "GET", 
		       	url: startPlugin.basePath+"/admin/department/listAjax", 
		        dataType:"json", 
		        success: function(data){ 
		        		if(null != d_id ){
		        			$("#"+d_id).html("");
		        		}
		        	 	var tml = "<option  value = ''>--请选择--</option>"
			             $.each(data, function(){
			                tml += "<option value= "+this.id+">"+this.name+"</option>" ;
			             });
		        	 	if(null != d_id ){
		        	 		$("#"+d_id).html(tml);
		        	 	}
		        } ,
			});
		}
}
/*function regionCleanSelect(elementId){
	var object = $("#"+elementId);
	object.empty();
	object.prepend("<option value=''>请选择</option>"); //为Select插入一个Option(第一个位置) 
}*/
