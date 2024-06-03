package dc.human.gbnb.humanConnect;

import java.sql.Date;
import java.sql.Time;

public class CenterRegDTO {
	
	private String uId;
	private String vTitle;
	private Date vStartDate;
	private Date vEndDate;
	private Time vStartTime;
	private Time vLastTime;
	private Date vRStartDate;
	private Date vREndDate;
	private int vMaxAmnt;
	private int vRegAmnt;
	private int vState;
	private String vUploadFilePath;
	
	
	
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getvTitle() {
		return vTitle;
	}
	public void setvTitle(String vTitle) {
		this.vTitle = vTitle;
	}
	public Date getvStartDate() {
		return vStartDate;
	}
	public void setvStartDate(Date vStartDate) {
		this.vStartDate = vStartDate;
	}
	public Date getvEndDate() {
		return vEndDate;
	}
	public void setvEndDate(Date vEndDate) {
		this.vEndDate = vEndDate;
	}
	public Time getvStartTime() {
		return vStartTime;
	}
	public void setvStartTime(Time vStartTime) {
		this.vStartTime = vStartTime;
	}
	public Time getvLastTime() {
		return vLastTime;
	}
	public void setvLastTime(Time vLastTime) {
		this.vLastTime = vLastTime;
	}
	public Date getvRStartDate() {
		return vRStartDate;
	}
	public void setvRStartDate(Date vRStartDate) {
		this.vRStartDate = vRStartDate;
	}
	public Date getvREndDate() {
		return vREndDate;
	}
	public void setvREndDate(Date vREndDate) {
		this.vREndDate = vREndDate;
	}
	public int getvMaxAmnt() {
		return vMaxAmnt;
	}
	public void setvMaxAmnt(int vMaxAmnt) {
		this.vMaxAmnt = vMaxAmnt;
	}
	public int getvRegAmnt() {
		return vRegAmnt;
	}
	public void setvRegAmnt(int vRegAmnt) {
		this.vRegAmnt = vRegAmnt;
	}
	public int getvState() {
		return vState;
	}
	public void setvState(int vState) {
		this.vState = vState;
	}
	public String getvUploadFilePath() {
		return vUploadFilePath;
	}
	public void setvUploadFilePath(String vUploadFilePath) {
		this.vUploadFilePath = vUploadFilePath;
	}




	
}
