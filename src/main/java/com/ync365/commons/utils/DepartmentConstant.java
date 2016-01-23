package com.ync365.commons.utils;

public class DepartmentConstant {
	
	
	public static enum DeptType{
		/**
		 * 1、产品 2、开发 3 ued 4 测试  
		 */
		PRODUCT(1,"产品"),DEVELOP(2,"开发"),UED(3,"UED"),TEST(4,"测试"),OTHER(-1,"其它");
		
		private final int value;
		private final String content;
		
		private DeptType(int value ,String content){
			this.content=content;
			this.value=value;
		}
		public int v(){
			return this.value;
		}
		public String c(){
			return this.content;
		}
	}
	public static void main(String[] args) {
		String str=DepartmentConstant.DeptType.OTHER.c();
		System.out.println(str);
	}
}
