package com;

import java.util.Date;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


@Entity(name = "notes")
public class note {

	@Id
    public int id;
    public String title;
    public String content;
    public Date createdDate;
    
	public note(String title, String content) {
        this.title = title;
        this.content = content;
        this.createdDate = new Date(); 
    }

    public note() {
		super();
		
	}
    	
    public int getId() {
        return id;
    }

    public void setId() {
    	this.id = new Random().nextInt(1000);
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate() {
        this.createdDate = new Date();
    }
}