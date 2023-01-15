package com.p4shark.games;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class GameMapper implements RowMapper<Game>
{
    @Override
    public Game mapRow(ResultSet rs, int rowNum) throws SQLException
    {
        Game temp = new Game();
        temp.setId(rs.getInt("id"));
        temp.setCapture(rs.getString("capture"));
        temp.setDescription(rs.getString("description"));
        temp.setImage(rs.getString("image"));
        temp.setScreenshots(rs.getInt("screenshots"));
        return temp;
    }
}
