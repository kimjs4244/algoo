package com.algoo.app.commem.model;

public interface CommemDAO {
	public int insertCompMember(CommemVO commemVo);
	public String loginCheck(CommemVO commemVo);
	public int checkUserid(String userid);
	public CommemVO selectMemberByUserid(String userid);
	public int updateCompCode(CommemVO commemVo);
	public int selectCompCode(String userid);
	public int updateCompMember(CommemVO commemVo);
}
