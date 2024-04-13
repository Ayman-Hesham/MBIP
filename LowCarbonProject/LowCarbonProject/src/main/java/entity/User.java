package entity;

import java.util.ArrayList;

import com.sun.tools.javac.util.List;

public class User {

 
    private String fullName;
    private String phoneNumber;
    private String password;
    private String confirmPassword;
    private String address;
    private String city;
    private String state;
    private String zipCode;
    private ArrayList<Month> monthList;
   
    
    public User() {
    
    	 monthList = new ArrayList<Month>();
    	
    }

    public User(String fullName, String phoneNumber, String password, String confirmPassword, String address, String city, String state, String zipCode) {
       
        this.fullName = fullName;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.confirmPassword = confirmPassword;
        this.address = address;
        this.city = city;
        this.state = state;
        this.zipCode = zipCode;
    }

   

   

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }
    public void setMonthList(Month month)
    {   
    	monthList.add(month);
    }
    public ArrayList<Month> getMonthList()
    {
    	return monthList;
    }
  
}
