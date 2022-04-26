package com.ezen.dia;

import java.util.ArrayList;

public interface Service {

	public void insert(String name,String title,int pirce,String content,String picture);
	public ArrayList<DiaDTO> out();
	public ArrayList<DiaDTO> detail(int dnum);
	public ArrayList<DiaDTO> detaild(int dnum);
	public void delete(int dnum);
	public ArrayList<DiaDTO> modify(int dnum);
	public void modifya(String name,String title,int pirce,String content,String picture,int dnum);
	public void readcnt(int dnum);
	public MemberDTO login(String id,String pw);
	public void newmem(String id,String pw,String name,String phon);
	public ArrayList<DiaDTO> lista();
	
}
