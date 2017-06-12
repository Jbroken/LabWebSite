/**
 * create by lishion

 */
colors = ["#33B5E5","#0099CC","#AA66CC","#9933CC","#99CC00","#669900","#FFBB33","#FF8800","#FF4444","#CC0000"];
//将unxi字符串转为yyyy-MM-dd格式的字符
function dateFormat(x){
	
	var date = new Date(x);
	return date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+" "+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
}

String.prototype.replaceAll = function(s1,s2){ 
	return this.replace(new RegExp(s1,"gm"),s2); 
} 
//检测是否数字
//x 输入字符串 isAllowPoint 是否允许小数点
function isNumber(x,isAllowPoint){
	
	if(isAllowPoint){
		var reg = /^[0-9]+([.][0-9])?$/;
	}else{
		var reg = /^([0-9]+)$/;
	}
	return reg.test(x);
}


function isNumberWithSign(x){
	var reg = /^(-)?\d+(\.\d+)?$/;
	return reg.test(x);
}

function generatePaging(){
	var str =   "<tr>"  
		+	"<td><input type='button' value='首页' id = 'next'  onclick='firstPage()'  class='ui_input_btn01'></td> "
		+	"<td><input type='button' value='上一页' id = 'last'  onclick='lastPage()'  class='ui_input_btn01'></td> "
		+	"<td><input type='button' value='下一页' id = 'next'  onclick='nextPage()'  class='ui_input_btn01'></td> "
		+	"<td><input type='button' value='尾页' id = 'next'  onclick='endPage()'  class='ui_input_btn01'></td> "
		+	"<td><p id='dataNum' ></p></td>"
		+	"<td><p id='pageNum' ></p></td>"
		+   "</tr>" 
		
	var str1 =  
			"<div class='ui_flt' style='height: 30px; line-height: 30px;'>   "                           
		+	"	共有<span class='ui_txt_bold04' id='dataNum'></span>条记录，            "
		+	"	当前第<span class='ui_txt_bold04' id='pageNum'></span>页                    "
		+	"</div>                                                          "	            
		+	"<div class='ui_frt'>  "
		+	"	<input type='button' value='首页'   class='ui_input_btn01' onclick='firstPage()'/>   "
		+	"	<input type='button' value='上一页'  class='ui_input_btn01' onclick='lastPage()'/>   "
		+	"	<input type='button' value='下一页'  class='ui_input_btn01' onclick='nextPage()' />  "
		+	"	<input type='button' value='尾页'    class='ui_input_btn01' onclick='endPage()' />	"
		+	"	转到第<input type='text' id='jumpNumTxt' class='ui_input_txt01' />页                        "
		+	"	<input type='button' class='ui_input_btn01' value='跳转' onclick='jumpPage()' />     "
		+	"</div> "
		
	$("#paging").append(str1);
	
}

function generatePagingA(functionName,page){
	var strFunc = 'page.jumpPage('+page+','+functionName+')';
	return "<a href='javascript:" +strFunc+ "' class='page_num'>"+page+"</a>";
}

function generatePagingNum(dom,nowNum,allNum,functionName){
	
	$(".page_num").remove();
	dom.after(generatePagingA(functionName,allNum));
	if(allNum>6&&(nowNum+2)<allNum){
		
		dom.after("<a class='page_num'>...</a>");
	}
	
	if(nowNum<5){
		for(var i=(allNum-1);i>=1;i--){
			dom.after(generatePagingA(functionName,i));
		}
		
	}
	else if(nowNum>=5){
		var pageNum = 0;
		for(var i=2;i>=-2;i--){
			 
			if((nowNum+i+1)>allNum){
				
				continue;
			}
			
			dom.after(generatePagingA(functionName,nowNum+i));	
		}
		 
		 
	}
	 
	
}
function getQueryString(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = window.location.search.substr(1).match(reg);
	if (r != null)
		return unescape(r[2]);
	return null;
}

function Page(){
	
   this.page = 1;
   this.dataPageNum = 10;
   this.pageMax = 0;
   this.dataMax = 0;
   this.url="";
   
   this.nextPage=function(fun){
	   
	 	if(this.page==this.pageMax){
	 		alert("已到最后一页");
	 		return;
	 	}
	 	this.page = (this.page==this.pageMax)?this.pageMax:this.page+1;
	 	this.refershPage(fun);
	} 
   
	this.lastPage=function(fun){
		this.page--;
		if(this.page<1){
			this.page=1;
			alert("已经是第一页");
		}
		this.refershPage(fun);
	}
	
	this.firstPage=function(){
		this.page=1;
		 
	}
	
	this.endPage=function(){
		this.page=this.pageMax;
		refershFunction();
	}

	this.refershPageNum=function(){
		if(this.page>this.pageMax){
			this.pageMax = this.page;
			lastPage();
		}
	}

	this.jumpPage=function(num,fun){
		 this.page = num;
		 if(this.page>this.pageMax){
			 this.page = this.pageMax;
		 }
		 else if(page<1){
			 this.page = 1; 
		 }
		 
		 this.refershPage(fun);
	}
	
	this.refershPage=function(fun){
		$.ajax({
			type: "POST",
		    url: this.url,
		    data:{dataEachNum:this.dataPageNum,pageNowNum:this.page},
		    async: false,
		    dataType:'json',
		    success: function(data){
		    	 fun(data);
		    } 
		   });
	}
	 
}

function getRadomRPositive(min,max)
{
    return min+Math.random()*(max-min);
}


