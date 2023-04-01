package study.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import db.DbConnect;
import study.dto.myCarDto;

public class myCarDao {

	DbConnect db=new DbConnect();
	
	
	public void insertCar(myCarDto dto) {
		
		Connection conn=db.getMysqlConnection();
		PreparedStatement pstmt=null;
		String sql="insert into mycar values(null,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//바인딩
			pstmt.setString(1, dto.getCarName());
			pstmt.setInt(2, dto.getCarPrice());
			pstmt.setString(3, dto.getCarPhoto());
			pstmt.setString(4, dto.getGuipday());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO: handle exception
		}finally {
		
			db.dbClose(pstmt, conn);
		}
		
		
	}
	
	//db에서 데이타를 list 에 담아서 리턴하는 메서드
		public List<myCarDto> getAllCars()
		{
			List<myCarDto> list=new Vector<>();
			Connection conn=db.getMysqlConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;

			String sql="select * from mycar order by num asc";

			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next())
				{
					myCarDto dto=new myCarDto();
					//dto 에 데이타를 넣는다
					dto.setNum(rs.getInt("num"));
					dto.setCarName(rs.getString("carname"));
					dto.setCarPrice(rs.getInt("carprice"));
					dto.setCarPhoto(rs.getString("carphoto"));
					dto.setGuipday(rs.getString("guipday"));
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
