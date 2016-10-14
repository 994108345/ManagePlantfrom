package com.manageplantfrom.entity;

import java.io.Serializable;

/**
 * 身份证件种类字典表
 * （身份证、军官证。。。。？）
 * @author wuhaifei
 *
 * @date 2016年8月9日
 */
public class PHCSMP_Dic_IdentifyCard_Type implements Serializable {
	private int Type_ID;
	private String Type_Name;
	
	public int getType_ID() {
		return Type_ID;
	}
	public void setType_ID(int type_ID) {
		Type_ID = type_ID;
	}
	public String getType_Name() {
		return Type_Name;
	}
	public void setType_Name(String type_Name) {
		Type_Name = type_Name;
	}
}
