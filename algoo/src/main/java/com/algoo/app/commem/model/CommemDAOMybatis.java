package com.algoo.app.commem.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class CommemDAOMybatis extends SqlSessionDaoSupport
	implements CommemDAO{
	
	private String namespace="com.mybatis.mapper.oracle.commem";

	@Override
	public int insertCompMember(CommemVO commemVo) {
		return getSqlSession().insert(namespace
				+".insertCompMember", commemVo);
	}

	@Override
	public String loginCheck(CommemVO commemVo) {
		return getSqlSession().selectOne(namespace
				+".selectPwd", commemVo);
	}

	@Override
	public int checkUserid(String userid) {
		return getSqlSession().selectOne(namespace
				+".selectCountUserid", userid);
	}

	@Override
	public CommemVO selectMemberByUserid(String userid) {
		return getSqlSession().selectOne(namespace
				+".selectMemberByUserid", userid);
	}

	@Override
	public int updateCompCode(CommemVO commemVo) {
		return getSqlSession().update(namespace+".updateCompCode", commemVo);
	}

	@Override
	public int selectCompCode(String userid) {
		return getSqlSession().selectOne(namespace+".selectCompCode", userid);
	}

	@Override
	public int updateCompMember(CommemVO commemVo) {
		return getSqlSession().update(namespace+".updateCompMember", commemVo);
	}

	@Override
	public int withdrawCommem(String userid) {
		return getSqlSession().update(namespace+".withDrawCommem",userid);
	}
}
