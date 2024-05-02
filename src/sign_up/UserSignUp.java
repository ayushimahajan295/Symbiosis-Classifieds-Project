
package sign_up;
import connection.MyConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
/**
 *
 * @author Aayusha Bhatia
 */
public class UserSignUp {
    Connection con = MyConnection.getConnection();
    PreparedStatement ps;
    Statement st;
    ResultSet rs;
    //get user table max row
    public int getMaxRow(){
        int row=0;
        try {
            st= con.createStatement();
            rs= st.executeQuery("select max(uid) from user");
            while(rs.next()){
                row=rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserSignUp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return row+1;
    }
    //check email already exists
    public boolean isEmailExists(String email){
        try {
            ps= con.prepareStatement("select* from user where uemail=? ");
            ps.setString(1,email);
            rs= ps.executeQuery();
            if(rs.next()){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserSignUp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    //check phone number already exists
    public boolean isPhoneExists(String phone){
        try {
            ps= con.prepareStatement("select* from user where upnum=? ");
            ps.setString(1,phone);
            rs= ps.executeQuery();
            if(rs.next()){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserSignUp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    //insert data into user table
    public void insert(int id, String username, String password, String email, String phone, String address){
        String sql= "insert into user values(?,?,?,?,?,?)";
        try {
            ps= con.prepareStatement(sql);
            ps.setInt(1,id);
            ps.setString(2,username);
            ps.setString(3,password);
            ps.setString(4,email);
            ps.setString(5,phone);
            ps.setString(6,address);
            if(ps.executeUpdate()>0){
                JOptionPane.showMessageDialog(null,"User added successfully");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserSignUp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
