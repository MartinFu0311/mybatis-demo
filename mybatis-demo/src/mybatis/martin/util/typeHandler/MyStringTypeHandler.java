package mybatis.martin.util.typeHandler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;
import org.apache.log4j.Logger;

@MappedTypes({String.class})
@MappedJdbcTypes(JdbcType.VARCHAR)
public class MyStringTypeHandler extends BaseTypeHandler<String> {
	
	private Logger log = Logger.getLogger(MyStringTypeHandler.class);

	@Override
	public String getNullableResult(ResultSet rs, String colName) throws SQLException {
		// TODO Auto-generated method stub
		log.info("MyStringTypeHandler, use column name to get String value: " + colName + ".");		
		return rs.getString(colName);
	}

	@Override
	public String getNullableResult(ResultSet rs, int index) throws SQLException {
		// TODO Auto-generated method stub
		log.info("MyStringTypeHandler, use column index to get String value.");	
		return rs.getString(index);
	}

	@Override
	public String getNullableResult(CallableStatement cs, int index) throws SQLException {
		// TODO Auto-generated method stub
		log.info("MyStringTypeHandler, use column index to get String value from SP.");	
		return cs.getString(index);
	}

	@Override
	public void setNonNullParameter(PreparedStatement ps, int index, String value, JdbcType jt) throws SQLException {
		// TODO Auto-generated method stub
		log.info("Use MyStringTypeHandler, set parameter.");
		ps.setString(index, value);
	}

}
