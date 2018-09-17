package mybatis.martin.mapper;

import mybatis.martin.domain.User;

public interface UserMapper {

	public User getUser(Long id);
	
	public int insertUser(User user);
	
	public int deleteUser(Long id);
	
}
