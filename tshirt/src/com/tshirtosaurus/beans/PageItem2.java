package com.tshirtosaurus.beans;

public class PageItem2 implements Comparable{
    
    private String id;
    private String name;
    private String image;
    private String action;
    private String sort;
    private String price;
    private String displayText;
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDisplayText() {
		return displayText;
	}

	public void setDisplayText(String displayText) {
		this.displayText = displayText;
	}

	public int compareTo(Object o) { return Integer.parseInt(this.sort) - Integer.parseInt(((PageItem2)o).sort) ;  }    
}