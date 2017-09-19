package cn.itcast.ssm.bean;


/**
 * UserBean 包含普通用户的信息
 * @author xing
 * @date 2017-9-17
 * @name EatChinkenWebSite
 */
public class User {
	private int userId;
	private String userName;
	private String userPassword;
	private String userSteamId;
	private int userLv;
	private String email;
	private String photo;
	private String phone;
	//是否允许添加朋友
	private int ifFindFriend;
	//是否公开自己的信息
	private int showMessage;
	//用户简介
	private String introduction;
	
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getIfFindFriend() {
		return ifFindFriend;
	}
	public void setIfFindFriend(int ifFindFriend) {
		this.ifFindFriend = ifFindFriend;
	}
	public int getShowMessage() {
		return showMessage;
	}
	public void setShowMessage(int showMessage) {
		this.showMessage = showMessage;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserSteamId() {
		return userSteamId;
	}
	public void setUserSteamId(String userSteamId) {
		this.userSteamId = userSteamId;
	}
	public int getUserLv() {
		return userLv;
	}
	public void setUserLv(int userLv) {
		this.userLv = userLv;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
}
