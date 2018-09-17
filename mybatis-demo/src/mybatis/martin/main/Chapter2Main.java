package mybatis.martin.main;

import org.apache.ibatis.session.SqlSession;

import mybatis.martin.domain.Role;
//import mybatis.martin.domain.User;
import mybatis.martin.mapper.RoleMapper;
//import mybatis.martin.mapper.UserMapper;
import mybatis.martin.util.SqlSessionFactoryUtil;
//import sun.util.logging.resources.logging;

public class Chapter2Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		SqlSession session = null;
		
		try {
			session = SqlSessionFactoryUtil.openSession();
			/*UserMapper userMapper = session.getMapper(UserMapper.class);
			
			User user = new User();
			user.setFirstName("Martin");
			user.setLastName("Fu");
			
			userMapper.insertUser(user);*/
			
			RoleMapper roleMapper = session.getMapper(RoleMapper.class);
			/*Role role = new Role();
			role.setRoleName("administrator");
			role.setNote("Big role!");
			
			roleMapper.insertRole(role);*/
			
			Role tmpRole = roleMapper.findRole("tst");
			System.out.println(tmpRole.getRoleName());
			
			tmpRole = roleMapper.getRole(6L);
			System.out.println(tmpRole.getRoleName());
			
			session.commit();
		}catch (Exception e) {
			// TODO: handle exception
			System.err.println(e.getMessage());
			session.rollback();
		}finally {
			if(session != null) {
				session.close();
			}
		}
		
	}

}
