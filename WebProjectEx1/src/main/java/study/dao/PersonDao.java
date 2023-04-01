package study.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import db.DbConnect;
import study.dto.PersonDto;

public class PersonDao {

DbConnect db=new DbConnect();
	

	//insert
	public void insertPerson(PersonDto dto) {
		
		Connection conn=db.getMysqlConnection();
		PreparedStatement pstmt=null;
		String sql="insert into person values (null,?,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//바인딩
			pstmt.setString(1, dto.getPersonName());
			pstmt.setInt(2, dto.getPersonYear());
			pstmt.setString(3, dto.getPersonAddress());
			pstmt.setString(4, dto.getPersonJob());
			pstmt.setString(5, dto.getPersonPhoto());
			
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			// TODO: handle exception
		}finally {
			db.dbClose(pstmt, conn);
		}
		
		
	}
	
	public PersonDto getData(int num) {
		PersonDto dto=new PersonDto();
		Connection conn=db.getMysqlConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select * from person where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//바인딩
			pstmt.setInt(1,num);
			//실행
			pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setPersonNum(rs.getInt("num"));
				dto.setPersonName(rs.getString("name"));
				dto.setPersonYear(rs.getInt("birthyear"));
				dto.setPersonAddress(rs.getString("address"));
				dto.setPersonJob(rs.getString("job"));
				dto.setPersonPhoto(rs.getString("photo"));
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
		}finally {
			db.dbClose(rs,pstmt, conn);
		}
		return dto;
		
	}
	
	public void deletePerson(int num) {
		
		Connection conn=db.getMysqlConnection();
		PreparedStatement pstmt=null;
		String sql="delete from person where num="+num;
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//
			
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			// TODO: handle exception
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	public void updatePerson(PersonDto dto) {
		
		Connection conn=db.getMysqlConnection();
		PreparedStatement pstmt=null;
		String sql="update from person set name=?,birthyear=?,address=?,photo=?,job? where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, dto.getPersonName());
			pstmt.setInt(2, dto.getPersonYear());
			pstmt.setString(3, dto.getPersonAddress());
			pstmt.setString(4, dto.getPersonPhoto());
			pstmt.setString(5, dto.getPersonJob());
			pstmt.setInt(6, dto.getPersonNum());
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			// TODO: handle exception
		}finally {
			db.dbClose(pstmt, conn);
		}
		
		
	}
	
	//db에서 데이타를 list에 담아서 리턴하는 메서드
	public List<PersonDto> getAllPersons(){
	
		List<PersonDto> list=new Vector<>();
		Connection conn=db.getMysqlConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from person order by num asc";
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				
				PersonDto dto=new PersonDto();
				//dto에 데이터를 넣는다
				dto.setPersonNum(rs.getInt("num"));
				dto.setPersonName(rs.getString("name"));
				dto.setPersonYear(rs.getInt("birthyear"));
				dto.setPersonAddress(rs.getString("address"));
				dto.setPersonJob(rs.getString("job"));
				dto.setPersonPhoto(rs.getString("photo"));
				
				//dto를 list에 추가한다
				list.add(dto);
				
			}
		}catch(SQLException e) {
			
		}finally {
			db.dbClose(rs,pstmt,conn);
		}
		return list;
		
	}
	
}
