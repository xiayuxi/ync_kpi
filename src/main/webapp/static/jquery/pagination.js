//分页控件的方法体
function pagination(clickFun) {
	// -----公共属性
	this.pageIndex = 1; // 当前页码，从1开始
	this.pageSize = 10; // 页大小，默认为10（这个属性目前没有用到，备用）
	this.totalCount = 0; // 总条数
	this.totalPage = 0; // 总页数

	this.currentClass = "btn btn-sm btn-info"; // 当前页码的样式。有默认值，可修改
	this.usualClass = "btn btn-sm btn-default"; // 通常页码的样式。有默认值，可修改

	// -----私有方法
	var creatBtn = function(parentDiv, className, data_index, innerHTML,
		disabled) {
		var btn = document.createElement("button");
		btn.className = className;
		btn.setAttribute("name", "btnPage");
		btn.setAttribute("data-index", data_index);
		btn.innerHTML = innerHTML;
		btn.disabled = disabled;
		btn.style.margin = "2px";
		btn.onclick = clickFun;
		parentDiv.appendChild(btn);
	};

	// -----公共方法
	// 测试方法
	this.print = function() {
			alert(this.pageIndex);
		}
		// 创建分页div
	this.creat = function() {
		if (this.pageIndex > 0 && this.pageSize > 0 && this.totalCount > 0 && this.totalPage > 0) {
			// 创建div容器
			var parentDiv = document.createElement("div");
			// 创建按钮：首页和上一页
			creatBtn(parentDiv, this.usualClass, 1, "首页", (this.pageIndex == 1));
			creatBtn(parentDiv, this.usualClass, this.pageIndex - 1, "上一页", (this.pageIndex == 1));
			// 创建数字页码：显示规则：
			// 1：一共显示10个页码
			// 2：当前页页码在第5位。即前面4个页码，后面5个页码
			// 3：如果前后页码实际数量不足时，需要一方补充另外一方
			var start = 1; // 起始页码
			var end = 1; // 结束页码
			if (this.totalPage < 10) {
				start = 1;
				end = this.totalPage;
			} else {
				start = this.pageIndex - 4;
				end = this.pageIndex + 5;
				if (start < 1) { // 判断start是否越界
					end += 1 - start;
					start = 1;
				}
				if (end > this.totalPage) {
					start -= end - this.totalPage;
					end = this.totalPage;
				}

			}
			for (var i = start; i < end + 1; i++) {
				if (i == this.pageIndex) {
					creatBtn(parentDiv, this.currentClass, i, i.toString(),
						true);
				} else {
					creatBtn(parentDiv, this.usualClass, i, i.toString(), false);
				}
			}
			// 创建按钮：下一页和尾页
			creatBtn(parentDiv, this.usualClass, this.pageIndex + 1, "下一页", (this.pageIndex == this.totalPage));
			creatBtn(parentDiv, this.usualClass, this.totalPage, "尾页", (this.pageIndex == this.totalPage));
			// 创建信息：
			var txt = "共" + this.totalPage + "页 共" + this.totalCount + "条数据";
			creatBtn(parentDiv, this.usualClass, 1, txt, true);
			return parentDiv;
		} else {
			return "";
		} 
	};
}