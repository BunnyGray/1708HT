package cn.tarena.ht.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import cn.tarena.ht.pojo.Module;
import cn.tarena.ht.pojo.Role;
import cn.tarena.ht.service.ModuleService;
import cn.tarena.ht.service.RoleService;

@Controller
@RequestMapping("/sysadmin/role")
public class RoleController {
	@Autowired
	private ModuleService moduleService;
	@Autowired
	private RoleService roleService;
	
	@RequestMapping("/list")
	public String list(Model model){
		
		//查询所有的角色信息
		List<Role> roles = roleService.findAll();
		model.addAttribute("roles",roles);
		return "sysadmin/role/jRoleList";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam(value="roleId", required=false)String[] roleIds){
		
		if (roleIds!=null) {
			roleService.delete(roleIds);
		}
		return "redirect:/sysadmin/role/list";
	}
	@RequestMapping("/tocreate")
	public String tocreate(){
		
		return "sysadmin/role/jRoleCreate";
	}
	@RequestMapping("/tosave")
	public String tosave(Role role){
		
		roleService.saveRole(role);
		
		
		return "redirect:/sysadmin/role/list";
	}
	
	@RequestMapping("/toview")
	public String toview(String roleId,Model model){
		
		Role role = roleService.findOne(roleId);
		model.addAttribute("role",role);
		return "sysadmin/role/jRoleView";
	}
	
	@RequestMapping("/toupdate")
	public String toupdate(String roleId,Model model){
		
		Role role = roleService.findOne(roleId);
		model.addAttribute("role",role);
		
		
		return "sysadmin/role/jRoleUpdate";
	}
	
	
	@RequestMapping("/update")
	public String update(Role role){
		
		roleService.update(role);
		
		return "redirect:/sysadmin/role/list";
	}
	
	@RequestMapping("/toModule")
	public String toModule(String roleId, Model model) throws JsonProcessingException{
		
		//查询所有的模块信息
		List<Module> modules = moduleService.findAll();
		//把对象转成Json字符串
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonString = mapper.writeValueAsString(modules);
		
		System.out.println(jsonString);
		
		model.addAttribute("zTreeJson",jsonString);
		
		
		return "sysadmin/role/jRoleModule";
	}
	
}
