package com.tshirtosaurus.actions;

import java.util.logging.Level;

import com.tshirtosaurus.beans.OrderForm;

public class OrderFormAction extends TeeOSaurAction {
    
    private static final long serialVersionUID = -6381690070701789750L;
    
    private String firstName;
    private String lastName;
    private String address1;
    private String address2;
    private String city;
    private String state;
    private String zip;
    private String email;
    private String comments;
    
    public String execute() throws Exception {
        
        OrderForm orderForm = new OrderForm();
        
        orderForm.setFirstName(firstName);
        orderForm.setLastName(lastName);
        orderForm.setAddress1(address1);
        orderForm.setAddress2(address2);
        orderForm.setCity(city);
        orderForm.setState(state);
        orderForm.setZip(zip);
        orderForm.setComments(comments);
        
//        logger.log(Level.INFO,"Order Action");
        return SUCCESS;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getAddress2() {
        return address2;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getState() {
        return state;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getZip() {
        return zip;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getComments() {
        return comments;
    }
}
