package com.tshirtosaurus.actions;

import java.util.logging.Level;

import com.tshirtosaurus.beans.TeeSpecs;

public class GetSpecsAction extends TeeOSaurAction {
    
    private static final long serialVersionUID = 5057758867376123036L;
    
    private String gender;
    private String sizze;
    private String style;
    private String color;
    
    public String execute() throws Exception {
//        logger.log(Level.INFO, "Get Specs");

        TeeSpecs teeSpecs = new TeeSpecs();
        teeSpecs.setGender(gender);
        teeSpecs.setSize(sizze);
        teeSpecs.setStyle(style);
        teeSpecs.setColor(color);

        return SUCCESS;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getGender() {
        return gender;
    }
    public void setSizze(String sizze) {
        this.sizze = sizze;
    }
    public String getSizze() {
        return sizze;
    }
    public void setStyle(String style) {
        this.style = style;
    }
    public String getStyle() {
        return style;
    }
    public void setColor(String color) {
        this.color = color;
    }
    public String getColor() {
        return color;
    }
}
