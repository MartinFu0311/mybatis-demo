package mybatis.martin.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import mybatis.martin.domain.PageParams;
import mybatis.martin.domain.Role;
import mybatis.martin.domain.RoleParams;

public interface RoleMapper {

	public Role getRole(Long id);
	
	public Role findRole(String roleName);
	
	public List<Role> findRolesByMap(Map<String, Object> parameterMap);
	
	public List<Role> findRolesByAnnotation(@Param("roleName") String roleName, @Param("note") String note);
	
	public List<Role> findRolesByBean(RoleParams params);
	
	public List<Role> findRolesByMix(@Param("params") RoleParams params, @Param("page") PageParams pageParams);
	
	public int insertRole(Role user);
	
	public int deleteRole(Long id);
	
}
