package mybatis.martin.main;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.martin.domain.PageParams;
import mybatis.martin.domain.Role;
import mybatis.martin.domain.RoleParams;
import mybatis.martin.mapper.RoleMapper;
import mybatis.martin.util.SqlSessionFactoryUtil;

public class MappingMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		System.out.println("Get roles by map:");
		findRolesByMap();
		
		System.out.println("Get roles by annotation:");
		findRolesByAnnotation();
		
		System.out.println("Get roles by bean:");
		findRolesByBean();
		
		System.out.println("Get roles by mix:");
		findRolesByMix();
		
		System.out.println("Insert role:");
		insertRole();
	}
	
	/*
	 * ʹ�� map �������������ŵ��������ڼ������г�����ȱ����ҵ�����ʲ�ǿ���ɶ��Բ�
	 */
	public static void findRolesByMap() {
		SqlSession session = SqlSessionFactoryUtil.openSession();
		
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("roleName", "me");
			map.put("note", "test");
			
			RoleMapper roleMapper = session.getMapper(RoleMapper.class);
			List<Role> roles = roleMapper.findRolesByMap(map);
			
			for (Role role : roles) {
				System.out.println("Role name:" + role.getRoleName() + ", note: " + role.getNote());
			}
			
			session.commit();
		}catch (Exception e) {
			// TODO: handle exception
			session.rollback();
		}finally {
			session.close();
		}
	}
	
	/*
	 * ʹ�� @Param �������������и��õĿɶ��ԣ�һ�������ڲ������� <= 5 �����
	 */
	public static void findRolesByAnnotation() {
		SqlSession session = SqlSessionFactoryUtil.openSession();
		
		try {		
			RoleMapper roleMapper = session.getMapper(RoleMapper.class);
			List<Role> roles = roleMapper.findRolesByAnnotation("me", "test");
			
			for (Role role : roles) {
				System.out.println("Role name:" + role.getRoleName() + ", note: " + role.getNote());
			}
			
			session.commit();
		}catch (Exception e) {
			// TODO: handle exception
			session.rollback();
		}finally {
			session.close();
		}
	}
	
	/*
	 * ʹ�� @Param �������������и��õĿɶ��ԣ�һ�������ڲ������� <= 5 �����
	 */
	public static void findRolesByBean() {
		SqlSession session = SqlSessionFactoryUtil.openSession();
		
		try {		
			RoleParams params = new RoleParams();
			params.setRoleName("me");
			params.setNote("test");
			
			RoleMapper roleMapper = session.getMapper(RoleMapper.class);
			List<Role> roles = roleMapper.findRolesByBean(params);
			
			for (Role role : roles) {
				System.out.println("Role name:" + role.getRoleName() + ", note: " + role.getNote());
			}
			
			session.commit();
		}catch (Exception e) {
			// TODO: handle exception
			session.rollback();
		}finally {
			session.close();
		}
	}
	
	/*
	 * ʹ�û�Ϸ�ʽ����������
	 */
	public static void findRolesByMix() {
		SqlSession session = SqlSessionFactoryUtil.openSession();
		
		try {		
			RoleParams roleParams = new RoleParams();
			roleParams.setRoleName("test");
			roleParams.setNote("test");
			
			//index start from 0, total records is 3 for the next sentence
			PageParams pageParams = new PageParams(0, 3);
			
			RoleMapper roleMapper = session.getMapper(RoleMapper.class);
			List<Role> roles = roleMapper.findRolesByMix(roleParams, pageParams);
			
			for (Role role : roles) {
				System.out.println("Role name:" + role.getRoleName() + ", note: " + role.getNote());
			}
			
			session.commit();
		}catch (Exception e) {
			// TODO: handle exception
			session.rollback();
		}finally {
			session.close();
		}
	}

	/*
	 * ʹ�û�Ϸ�ʽ����������
	 */
	public static void insertRole() {
		SqlSession session = SqlSessionFactoryUtil.openSession();
		
		try {		
			Date date = new Date();
			Long identity = date.getTime();
			
			Role role = new Role();
			role.setRoleName("Test" + identity);
			role.setNote("Test" + identity);
			
			RoleMapper roleMapper = session.getMapper(RoleMapper.class);
			int succRows = roleMapper.insertRole(role);
			
			System.out.println("Successfully inserted " + succRows + " row, the id is " + role.getId());
			
			session.commit();
		}catch (Exception e) {
			// TODO: handle exception
			session.rollback();
		}finally {
			session.close();
		}
	}
	
}
