package mybatis.martin.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sun.istack.internal.logging.Logger;

public class SqlSessionFactoryUtil {
	
	private static SqlSessionFactory sqlSessionFactory = null;
	
	private static final Class<?> CLASS_LOCK = SqlSessionFactoryUtil.class; 
	
	private SqlSessionFactoryUtil() {
		
	}
	
	private static SqlSessionFactory initSqlSessionFactory() {
		
		String resource = "mybatis-config.xml";	
		
		if(sqlSessionFactory == null) {
			synchronized (CLASS_LOCK) {
				if(sqlSessionFactory == null) {
					InputStream inputStream = null;
					
					try {
						inputStream = Resources.getResourceAsStream(resource);
					}catch(IOException ex) {
						Logger.getLogger(SqlSessionFactoryUtil.class).log(Level.SEVERE, null, ex);
					}					
					
					sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
				}
			}
		}
		
		return sqlSessionFactory;
		
	}
	
	public static SqlSession openSession() {
		if(sqlSessionFactory == null) {
			initSqlSessionFactory();
		}
		
		return sqlSessionFactory.openSession();
	}

}
