package az.techstore.repository.impl.rowmapper;

import az.techstore.domain.Role;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class RoleRowMapper implements RowMapper<Role> {

    @Override
    public Role mapRow(ResultSet rs, int rowNum) throws SQLException {
        Role role = Role.fromValue(rs.getInt("id"));
        role.setName(rs.getString("name"));
        role.setSuccessPage(rs.getString("success_page"));
        role.setPriority(rs.getInt("priority"));
        return role;
    }
}
