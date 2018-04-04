package com.thinkgem.jeesite.modules.sys.dao;

import org.springframework.stereotype.Repository;

import com.thinkgem.jeesite.common.persistence.BaseDao;
import com.thinkgem.jeesite.common.persistence.Parameter;
import com.thinkgem.jeesite.modules.sys.entity.Role;

/**
 * 角色DAO接口
 * @author ThinkGem
 */
@Repository
public class RoleDao  extends BaseDao<Role> {

	
	public Role findByName(String name){
		return getByHql("from Role where delFlag = :p1 and name = :p2", new Parameter(Role.DEL_FLAG_NORMAL, name));
	}

}
