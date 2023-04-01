package study.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.List;
import java.util.Vector;

import db.DbConnect;
import study.dto.myAppDto;

public class myAppDao {

			DbConnect db=new DbConnect();
			
			//insert
			public void insertApp(myAppDto dto) {
				
				Connection conn=db.getMysqlConnection();
				PreparedStatement pstmt=null;
		
				String sql="insert into myapp (writer,subject,content,photo) values (?,?,?,?)";
				
				try {
					pstmt=conn.prepareStatement(sql);
					//바인딩
					pstmt.setString(1, dto.getWriter());
					pstmt.setString(2, dto.getSubject());
					pstmt.setString(3, dto.getContent());
					pstmt.setString(4, dto.getPhoto());
					
					//
					pstmt.execute();
					
				} catch (SQLException e) {
					// TODO: handle exception
				}finally {
					db.dbClose(pstmt, conn);
				}
					
				
			}
			
			//all select
			public List<myAppDto> getAllData(){
				List<myAppDto> list=new Vector<>();
				Connection conn=db.getMysqlConnection();
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				String sql="select * from myapp order by num desc";
				
				try {
					pstmt=conn.prepareStatement(sql);
					rs=pstmt.executeQuery();
					
					while(rs.next()) {
						
						int num=rs.getInt("num");
						String writer=rs.getString("writer");
						String subject=rs.getString("subject");
						String content=rs.getString("content");
						String photo=rs.getString("photo");
						int readcount=rs.getInt("readcount");
						Timestamp writeday=rs.getTimestamp("writeday");
						
						myAppDto dto=new myAppDto(num,writer,subject,content,photo,readcount, writeday);
						
						//list 추가
						list.add(dto);
					}
				} catch (Exception e) {
					// TODO: handle exception
				}finally {
					db.dbClose(rs,pstmt,conn);
				}
				return list;
			}
			
			//readcount 증가
			public void updateReadCount(int num) {
		
				
				Connection conn=db.getMysqlConnection();
				PreparedStatement pstmt=null;
				
				String sql="update myapp set readcount=readcount+1 where num=?";
				
				try {
					pstmt=conn.prepareStatement(sql);
					//바인딩
					pstmt.setInt(1, num);
					
					//실행
					pstmt.execute();
				} catch (SQLException e) {
					// TODO: handle exception
				}finally {
					db.dbClose(pstmt, conn);
				}
			}
			
			//detail view 상세보기 
			public myAppDto getData(int num) {
				myAppDto dto=null;
				Connection conn=db.getMysqlConnection();
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				String sql="select * from myapp where num=?";
				
			
				try {
					pstmt=conn.prepareStatement(sql);
					//바인딩
					pstmt.setInt(1, num);
					
					rs=pstmt.executeQuery();
					
					if(rs.next()) {
						
						String writer=rs.getString("writer");
						String subject=rs.getString("subject");
						String content=rs.getString("content");
						String photo=rs.getString("photo");
						int readcount=rs.getInt("readcount");
						Timestamp writeday=rs.getTimestamp("writeday");
						
						dto=new myAppDto(num,writer,subject, content,photo,readcount, writeday);
						
					}
				} catch (Exception e) {
					// TODO: handle exception
				}finally {
					db.dbClose(rs,pstmt,conn);
				}
				return dto;
			}
			
			//delete
			public void deleteApp(int num) {
				
				
				Connection conn=db.getMysqlConnection();
				PreparedStatement pstmt=null;
				
				String sql="delete from myapp where num=?";
				
				try {
					pstmt=conn.prepareStatement(sql);
					//바인딩
					pstmt.setInt(1, num);
					
					//실행
					pstmt.execute();
				} catch (SQLException e) {
					// TODO: handle exception
				}finally {
					db.dbClose(pstmt, conn);
				}
				
			}
			//update
			public void updateApp(myAppDto dto) {
				
				Connection conn=db.getMysqlConnection();
				Statement stmt=null;
				
				String sql="update myapp where writer='"+dto.getWriter()+"',subject='"
						+dto.getSubject()+"',content='"+dto.getContent()+"',photo='"+dto.getPhoto()
						+"' where num="+dto.getNum();
				
				String sql2="update myapp where writer='"+dto.getWriter()+"',subject='"
						+dto.getSubject()+"',content='"+dto.getContent()+"' where num="
						+dto.getNum();
				
				try {
				stmt=conn.createStatement();
				if(dto.getPhoto()==null)
					stmt.execute(sql2);//photo 수정X
					//바인딩
					else
					stmt.execute(sql);
				
				} catch (SQLException e) {
					// TODO: handle exception
				}finally {
						try {
							if(stmt!=null) stmt.close();
							if(conn!=null) stmt.close();
						} catch (SQLException e) {
							// TODO: handle exception
						}
				}
				
			}
			
	}


