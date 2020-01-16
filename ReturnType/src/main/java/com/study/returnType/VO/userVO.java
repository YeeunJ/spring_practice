package com.study.returnType.VO;

public class userVO {
	private String name;
	private String userId;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Override
    public String toString(){
        return "MemberVO [User name = " + name + ", User Id = " + userId + "]";
    }

}
