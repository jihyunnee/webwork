package study.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import db.DbConnect2;
import study.dto.SawonDto;

public class SawonDao {

	DbConnect2 db=new DbConnect2();
	
	public List<SawonDto> getSelectList(int select)
	{
		Connection conn=db.getMysqlConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		
		List<SawonDto> list=new Vector<SawonDto>();
		
		if(select==1)
			sql="select * from sawon order by num asc";
		else if(select==2)
			sql="select * from sawon where gender='남자' order by num asc";
		else
			sql="select * from sawon where gender='여자' order by num asc";
		
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				SawonDto dto=new SawonDto();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setScore(rs.getInt("score"));
				dto.setBuseo(rs.getString("buseo"));
				dto.setGender(rs.getString("gender"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}

	
	public void insertSawon(SawonDto dto) {
		
		Connection conn=db.getMysqlConnection();
		PreparedStatement pstmt=null;
		String sql="insert into sawon values(null,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setInt(2, dto.getScore());
			pstmt.setString(3, dto.getGender());
			pstmt.setString(4, dto.getBuseo());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO: handle exception
		}finally {
		
			db.dbClose(pstmt, conn);
		}
		
		
	}
	
	
	
	//db에서 데이타를 list 에 담아서 리턴하는 메서드
		public List<SawonDto> getAlldata()
		{
			List<SawonDto> list=new Vector<>();
			Connection conn=db.getMysqlConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;

			String sql="select * from sawon order by num asc";

			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next())
				{
					SawonDto dto=new SawonDto();
					//dto 에 데이타를 넣는다
					dto.setNum(rs.getInt("num"));
					dto.setName(rs.getString("name"));
					dto.setScore(rs.getInt("score"));
					dto.setGender(rs.getString("gender"));
					dto.setBuseo(rs.getString("buseo"));
					//dto를 list 에 추가한다
					list.add(dto);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(rs, pstmt, conn);
			}

			return list;
		}
	
	
	
	
}
