
package newpackage;

import java.sql.*;
/**
 *
 * @author hiper
 */
public class UserDatabase {
    Connection con ;

    public UserDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveUser(User user){
        boolean set = false;
        try{
           //Insert register data to database
           String query = "insert into accounts(userid,password,firstname,lastname) values(?,?,?,?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, user.getUserID());
           pt.setString(4, user.getPassword());
           pt.setString(3, user.getLastName());
           pt.setString(2, user.getFirstName());
           
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    
    public User logUser(String userid, String password){
        User user = null;
        try{
            String query = "Select * from accounts where userid =? and password=?";
            PreparedStatement pst= this.con.prepareStatement(query);
            pst.setString(1, userid);
            pst.setString(2, password);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()){
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUserID(rs.getString("userid"));
                user.setPassword(rs.getString("password"));
                user.setFirstName(rs.getString("firstname"));
                user.setLastName(rs.getString("lastname"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return user;
    }
}
