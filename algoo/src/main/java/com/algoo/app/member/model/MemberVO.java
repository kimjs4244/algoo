package com.algoo.app.member.model;

public class MemberVO {
	private int memberCode;
	private String userid;
	private String password;
	private String nickName;
	private String userName;
	private String birth;
	private String gender;
	private String zipcode;
	private String address;
	private String addressDetail;
	private String phone1;
	private String phone2;
	private String phone3;
	private String hp1;
	private String hp2;
	private String hp3;
	private String email1;
	private String email2;
	private int authcode;
	
	
	public int getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(int memberCode) {
		this.memberCode = memberCode;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddressDetail() {
		return addressDetail;
	}
	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getHp1() {
		return hp1;
	}
	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}
	public String getHp2() {
		return hp2;
	}
	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}
	public String getHp3() {
		return hp3;
	}
	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public int getAuthcode() {
		return authcode;
	}
	public void setAuthcode(int authcode) {
		this.authcode = authcode;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "MemberVO [memberCode=" + memberCode + ", userid=" + userid + ", password=" + password + ", nickName="
				+ nickName + ", userName=" + userName + ", birth=" + birth + ", gender=" + gender + ", zipcode="
				+ zipcode + ", address=" + address + ", addressDetail=" + addressDetail + ", phone1=" + phone1
				+ ", phone2=" + phone2 + ", phone3=" + phone3 + ", hp1=" + hp1 + ", hp2=" + hp2 + ", hp3=" + hp3
				+ ", email1=" + email1 + ", email2=" + email2 + ", authcode=" + authcode + "]";
	}
	
	
	
}