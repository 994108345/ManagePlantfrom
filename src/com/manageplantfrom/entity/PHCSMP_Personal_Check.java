package com.manageplantfrom.entity;

import java.io.Serializable;

/**
 * 进入人员人身检查信息表
 * @author wuhaifei
 *
 * @date 2016年8月9日
 */
public class PHCSMP_Personal_Check implements Serializable {
	
	private int Check_ID;//安全检查信息ID（主键）
	private String Suspect_ID;//档案编号
	private String Self_ReportS;//自述症状
	private String Check_ReportS;//检查情况
	private String Check_Situation;//人身检查状态（人身检查记录字典表中ID逗号分隔）
	private int Staff_ID;//办案民警
	private int Room_ID;//信息登记房间
	
	private int total_record = 60;//需要填写的总记录数
	private int fill_record;//当前填写的记录数

	public int getCheck_ID() {
		return Check_ID;
	}

	public void setCheck_ID(int check_ID) {
		Check_ID = check_ID;
	}

	public String getSuspect_ID() {
		return Suspect_ID;
	}

	public void setSuspect_ID(String suspect_ID) {
		Suspect_ID = suspect_ID;
	}

	public String getSelf_ReportS() {
		return Self_ReportS;
	}

	public void setSelf_ReportS(String self_ReportS) {
		Self_ReportS = self_ReportS;
	}

	public String getCheck_ReportS() {
		return Check_ReportS;
	}

	public void setCheck_ReportS(String check_ReportS) {
		Check_ReportS = check_ReportS;
	}

	public String getCheck_Situation() {
		return Check_Situation;
	}

	public void setCheck_Situation(String check_Situation) {
		Check_Situation = check_Situation;
	}

	public int getStaff_ID() {
		return Staff_ID;
	}

	public void setStaff_ID(int staff_ID) {
		Staff_ID = staff_ID;
	}

	public int getRoom_ID() {
		return Room_ID;
	}

	public void setRoom_ID(int room_ID) {
		Room_ID = room_ID;
	}

	public int getTotal_record() {
		return total_record;
	}

	public void setTotal_record(int total_record) {
		this.total_record = total_record;
	}

	public int getFill_record() {
		return fill_record;
	}

	public void setFill_record(int fill_record) {
		this.fill_record = fill_record;
	}
}
