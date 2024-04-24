package com;

import java.util.ArrayList;

public class addinlist {
	
	public static ArrayList<note> list2= new ArrayList<>();
	public addinlist() {
		super();
	}
	public void addinlistf(String title,String content) {
		note note = new note();
		note.setId();
		note.setContent(content);
		note.setTitle(title);
		note.setCreatedDate();
		list2.add(note);
	}
	public ArrayList<note> returnListf(){
		System.out.println(list2.size());
		return list2;
	}
}
