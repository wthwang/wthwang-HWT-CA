package com.companyimgtab;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.companyjava.DBManager;

public class TList {
	public ArrayList<TDto> list= new ArrayList<TDto>();
	public Connection conn = null;
	public PreparedStatement pstmt= null;
	public ResultSet rest  =null;
	public int cnt =0;
	
	public ArrayList<TDto> showAllList(int ino) {
		String sql = "select*from imgtab"+ino+" order by bno desc";
		showAllListCnt(ino);
		try {
			conn = new DBManager().getConnection();
			pstmt = conn.prepareStatement(sql);
			rest = pstmt.executeQuery();
			while(rest.next()) {
				int bno = rest.getInt("bno");
				String name =rest.getString("bname");
				String title = rest.getString("btitle");
				String date = rest.getString("bdate");
				int hit = rest.getInt("bhit");
				String file = rest.getString("bfile");
				list.add(new TDto(bno,name,title,date,hit,cnt,file));
				cnt--;
			}
			if(rest!=null) {System.out.println("성공");}
			else			{System.out.println("실패");}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			if(rest !=null) {try {rest.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(pstmt !=null) {try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(conn !=null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}	}
		}
		return list;
	}
	
	public int showAllListCnt(int ino) {
		String sql = "select count(*) cnt from imgtab"+ino;
		try {
			conn = new DBManager().getConnection();
			pstmt = conn.prepareStatement(sql);
			rest = pstmt.executeQuery();
			while(rest.next()) {
				cnt = rest.getInt("cnt");
			}
			if(rest!=null) {System.out.println("성공");}
			else			{System.out.println("실패");}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			if(rest !=null) {try {rest.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(pstmt !=null) {try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(conn !=null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}	}
		}
		return cnt;
	}
	public void incrementHits(int bno) {
		String sql = "update imgtab set bhit=bhit+1 where bno=?";
		try {
			conn = new DBManager().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			int rest2 = pstmt.executeUpdate();
			if(rest2 != -1) {
				System.out.println("조회수 업데이트 성공");
			}else {System.out.println("조회수 업데이트 실패");}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			if(rest !=null) {try {rest.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(pstmt !=null) {try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(conn !=null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}	}
		}
	}
	public TDto showDetail(int bno) {
		TDto dto = new TDto();
		String sql="select*from imgtab where bno=?";
		try {
			conn = new DBManager().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rest = pstmt.executeQuery();
			if(rest.next()) {
				dto.setBname(rest.getString("bname"));
			}
			if(rest!=null) {System.out.println("성공");}
			else			{System.out.println("실패");}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			if(rest !=null) {try {rest.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(pstmt !=null) {try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(conn !=null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}	}
		}
		return dto;
	}
	
	public ArrayList<TDto> showhome() {
		String sql1 = "select*from imgtab1 order by bhit desc limit 4";
		String sql2 = "select*from imgtab2 order by bhit desc limit 2";
		String sql3 = "select*from imgtab3 order by bhit desc limit 2";
		try {
			conn = new DBManager().getConnection();
			pstmt = conn.prepareStatement(sql1);
			rest = pstmt.executeQuery();
			while(rest.next()) {
				int bno = rest.getInt("bno");
				String name =rest.getString("bname");
				String title = rest.getString("btitle");
				String date = rest.getString("bdate");
				int hit = rest.getInt("bhit");
				String file = rest.getString("bfile");
				list.add(new TDto(bno,name,title,date,hit,cnt,file));
				cnt--;
			}
			rest.close();
			pstmt.close();
			
			pstmt = conn.prepareStatement(sql2);
			rest = pstmt.executeQuery();
			while(rest.next()) {
				int bno = rest.getInt("bno");
				String name =rest.getString("bname");
				String title = rest.getString("btitle");
				String date = rest.getString("bdate");
				int hit = rest.getInt("bhit");
				String file = rest.getString("bfile");
				list.add(new TDto(bno,name,title,date,hit,cnt,file));
				cnt--;
			}
			rest.close();
			pstmt.close();
			
			pstmt = conn.prepareStatement(sql3);
			rest = pstmt.executeQuery();
			while(rest.next()) {
				int bno = rest.getInt("bno");
				String name =rest.getString("bname");
				String title = rest.getString("btitle");
				String date = rest.getString("bdate");
				int hit = rest.getInt("bhit");
				String file = rest.getString("bfile");
				list.add(new TDto(bno,name,title,date,hit,cnt,file));
				cnt--;
			}
			
			
		}catch(Exception e) {e.printStackTrace();}
		finally {
			if(rest !=null) {try {rest.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(pstmt !=null) {try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}	}
			if(conn !=null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}	}
		}
		return list;
	}
	

}
