package newpackage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hiper
 */
public class User {
    int id;
    String userid;
    String password;
    String firstname;
    String lastname;
    
    public User() {
    }
    
    public User(int id,String userid, String password, String firstname, String lastname) {
        this.id = id;
        this.userid = userid;
        this.password = password;
        this.firstname = firstname;
        this.lastname = lastname;
    }

    public User(String userid, String firstname,String lastname, String password) {
        this.userid = userid;
        this.firstname = firstname;
        this.lastname = lastname;
        this.password = password;
    }

    public User(String userid, String password) {
        this.userid = userid;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public void setUserID(String userid) {
        this.userid = userid;
    }

    public String getName() {
        return firstname;
    }

    public void setFirstName(String firstname) {
        this.firstname = firstname;
    }
    
    public void setLastName(String lastname) {
        this.lastname = lastname;
    }

    public String getUserID() {
        return userid;
    }
    
    public String getFirstName() {
        return firstname;
    }
    
    public String getLastName() {
        return lastname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
