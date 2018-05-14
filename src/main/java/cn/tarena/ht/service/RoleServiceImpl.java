package cn.tarena.ht.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.ht.mapper.RoleMapper;
import cn.tarena.ht.pojo.Role;

@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleMapper roleMapper;
	@Override
	public List<Role> findAll() {
		// TODO Auto-generated method stub
		return roleMapper.findAll();
	}
	@Override
	public void delete(String[] roleIds) {
		// TODO Auto-generated method stub
		roleMapper.delete(roleIds);
	}
	@Override
	public void saveRole(Role role) {
		
		role.setRoleId(UUID.randomUUID().toString());
		role.setCreateTime(new Date());
		
		roleMapper.saveRole(role);
	}
	@Override
	public Role findOne(String roleId) {
		// TODO Auto-generated method stub
		return roleMapper.findOne(roleId);
	}
	@Override
	public void update(Role role) {
		// TODO Auto-generated method stub
		roleMapper.update(role);
	}

	
}
