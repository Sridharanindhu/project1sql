import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Insert {
    public static void main(String[] args){
        String URL="jdbc:mysql://localhost:3306/Students";
        String USER="root";
        String PASSWORD="Dinesh@2003";
        try{
            Connection con=DriverManager.getConnection(URL,USER,PASSWORD);
            String insertSQL="INSERT INTO Employee (Id, F_Name, L_Name, Email, Joining_date) VALUES (?, ?, ?, ?,?)";
            PreparedStatement insertStatement=con.prepareStatement(insertSQL);
            insertStatement.setInt(1,111);//Id
            insertStatement.setString(2,"Dinesh");//F_Name
            insertStatement.setString(3,"Satheesh");//l_Name
            insertStatement.setString(4,"Dinesh@gmail.com");
            insertStatement.setString(5,"2024-08-19");//joining_date in proper format 'YYYY-MM-DD'
            insertStatement.executeUpdate();
            System.out.println("Insert operation Completed successfully");
        }
         catch(SQLException ex){
            System.out.println(ex);
    }
}
}
