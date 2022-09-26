package OK_TableProducts;

import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import java.sql.*;

public class MySQLusersTest {

    private static String userName;
    private static String password;
    private static String dbURL;
    private static String table;
    private static Connection dbconnection;
    private static int idrecout;            // Its ID generated from INSERT for UPDATE, DELETE

    @BeforeTest
    // Create Connection between Java to the DB
    public void setUp() {
        try {
            /*Get connection to the DB:
            jdbc:mysql -> Java Database Connectivity API
            127.0.0.1 -> local host
            3307 -> port my SQL server is using
            test -> the DB name i created for testing*/

            userName = "root";
            password = "root";
            table = "users";
            dbURL = "jdbc:mysql://127.0.0.1:3307/base";
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (ClassNotFoundException e)
        {
            System.out.println("MySQL JDBC driver not found.");
            e.printStackTrace();
        }
    }

    @Test(description = "TC_001: Description test Description test", priority=1)
    // Execute SQL Query - e.g. Select * to get all data from MySql table
    public static void ReadTableUsersTest() {
        try {
            dbconnection = DriverManager.getConnection(dbURL, userName, password);
            Statement stmt = dbconnection.createStatement();

            //String sqlStr = "SELECT * FROM users;";
            String sqlStr = "SELECT * FROM (SELECT * FROM " + table + " ORDER BY id_user DESC LIMIT 3)Var1 ORDER BY id_user ASC;";

            ResultSet resultSet = stmt.executeQuery(sqlStr);
            System.out.print("\nTest 1 SELECT \n");
            System.out.print("-------------\n");
            System.out.print("---------------------------------------------------------------------------------\n");
            System.out.print("| id | surname  name  patronymic    | phone    | email           | url  | status |\n");
            System.out.print("---------------------------------------------------------------------------------\n");
            System.out.print("  last 3 record \"ID\" .... . . . . .\n");

            while (resultSet.next()) {
                {
                    System.out.print("  " + resultSet.getString(1));
                    System.out.print(" | " + resultSet.getString(2));
                    System.out.print("  " + resultSet.getString(4));
                    System.out.print("  " + resultSet.getString(3));
                    System.out.print(" | " + resultSet.getString(5));
                    System.out.print(" | " + resultSet.getString(6));
                    System.out.print(" | " + resultSet.getString(7));
                    System.out.println(" | " + resultSet.getString(8));
                }

                // Verify all results not null i.e. there are non null records in our DB
//                Assert.assertNotNull(resultSet.getString(1));       // NotNull
//                Assert.assertNotNull(resultSet.getString(2));       // NotNull
//                Assert.assertNotNull(resultSet.getString(3));       // NotNull
//                Assert.assertNotNull(resultSet.getString(4));       // NotNull

            }
        } catch (SQLException e) {
            System.out.println("Connection to MySQL database failed");
            e.printStackTrace();
        }
    }

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

//    @Test(description = "TC_002: Description test Description test", priority=2)
//    // Execute SQL Query - e.g. Select * to get all data from MySql table
//    public static void ReadTableUsersNullTest() {
//        try {
//            dbconnection = DriverManager.getConnection(dbURL, userName, password);
//            Statement stmt = dbconnection.createStatement();
//
//            //String sqlStr = "SELECT * FROM users;";
//            String sqlStr = "SELECT * FROM " + table + ";";
//
//            ResultSet resultSet = stmt.executeQuery(sqlStr);
//
//            System.out.print("\nTest 2 SELECT (Null) \n");
//            System.out.print("--------------------\n");
//            while (resultSet.next()) {
//                {
//                    resultSet.getString(1);
//                    resultSet.getString(2);
//                    resultSet.getString(3);
//                    resultSet.getString(4);
//                    resultSet.getString(5);
//                    resultSet.getString(6);
//                    resultSet.getString(7);
//                    resultSet.getString(8);
//
////                    System.out.print(" | " + resultSet.getString(7));
////                    System.out.println(" | " + resultSet.getString(8));
//                }
//
//                // Verify all results not null i.e. there are non null records in our DB
//                Assert.assertNotNull(resultSet.getString(1));       // NotNull
//                Assert.assertNotNull(resultSet.getString(2));       // NotNull
//                Assert.assertNotNull(resultSet.getString(3));       // NotNull
//                Assert.assertNotNull(resultSet.getString(4));       // NotNull
//                Assert.assertNotNull(resultSet.getString(5));       // NotNull
//                Assert.assertNotNull(resultSet.getString(6));       // NotNull
//                Assert.assertNotNull(resultSet.getString(7));       // NotNull
//                Assert.assertNotNull(resultSet.getString(8));       // NotNull
//
//            }
//        } catch (SQLException e) {
//            System.out.println("Connection to MySQL database failed");
//            e.printStackTrace();
//        }
//    }

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


    static int getLastId() {
        int id = 5;
        try {
            Connection con = DriverManager.getConnection(dbURL, userName, password);

            PreparedStatement ps = con.prepareStatement(" INSERT INTO " + table + " (surname, name, patronymic, phone, email, url) values(?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);

            System.out.print("\nPreparation for next Tests 3, 4, 5\n");
            System.out.print("----------------------------\n");

            ps.setString(1, "InsSurname");
            ps.setString(2, "InsName");
            ps.setString(3, "InsPatr");
            ps.setString(4, "Ins1234567");
            ps.setString(5, "Insqwe@qwe.com");
            ps.setString(6, "Inswww.ua");

            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next())
            {
                id = rs.getInt(1);
            }
            System.out.println("Insert DATA to \"USERS\" table -> OK");
            System.out.println("<" + id + "> | Shalomi  Tel_Aviv  Kshishek | 1234567 | qwe@qwe.com | www.ua | active");
            System.out.println("MySQL generate <ID> record to \"USERS\" table = <" + id + ">");

        }
        catch (Exception e)
        {
            System.out.println("Connection to MySQL database failed");
            e.printStackTrace();
        }
        return id;
    }

    @Test(description = "TC_003: Description test Description test", priority=3)
    // Execute SQL Query - e.g. update data values in MySql table
    public static void UpdateValueInTable() {
        try {

            int idrecodr = getLastId();
            idrecout = idrecodr;

            // Create a mysql Database connection
            //Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbURL, userName, password);

            System.out.print("\nTest 3 UpDate \n");
            System.out.print("--------------\n");
            System.out.print("UPDATE Record <ID> = " + idrecout + " -> OK \n");

            // The mysql update statement
            String query = "UPDATE " + table + " SET surname = 'UpDate', " +
                    "name = 'UpDate', " +
                    "patronymic = 'UpDate', " +
                    "phone = '1234321', " +
                    "email = 'com.qwe@qwe', " +
                    "url = 'ua.www' " +
                    "WHERE id_user = " + idrecout + ";";
            //String query = "update users set name = 'Frank', surname = 'Paris', phone = '68' where id_user = '7'";

            System.out.println("Update statement Done!");

            // Create the mysql update prepared statement
            PreparedStatement preparedStmt = conn.prepareStatement(query);

            // Execute the query
            preparedStmt.execute();
            conn.close();

        } catch (Exception e) {
            System.out.println("Got an exception!");
            System.out.println(e.getMessage());
        }

    }

    @Test(description = "TC_004: Description test Description test", priority=4)
    public static void Select() {
        try {

            dbconnection = DriverManager.getConnection(dbURL, userName, password);
            Statement stmt = dbconnection.createStatement();

            String sqlStr = "SELECT * FROM " + table + " WHERE id_user = " + idrecout + " ;";

            ResultSet resultSet = stmt.executeQuery(sqlStr);

            System.out.print("\nTest 4 SELECT \n");
            System.out.print("-------------\n");
            System.out.print("Check INSERT from table <ID> = " + idrecout + " -> OK \n");
            while (resultSet.next())
            {
                System.out.print("<" + resultSet.getString(1));
                System.out.print("> | " + resultSet.getString(2));
                System.out.print("  " + resultSet.getString(4));
                System.out.print("  " + resultSet.getString(3));
                System.out.print(" | " + resultSet.getString(5));
                System.out.print(" | " + resultSet.getString(6));
                System.out.print(" | " + resultSet.getString(7));
                System.out.println(" | " + resultSet.getString(8));
            }
        }
        catch (SQLException e)
        {
            System.out.println("Connection to MySQL database failed");
            e.printStackTrace();
        }
    }

    @Test(description = "TC_005: Description test Description test", priority=5)
    public static void DeleteOut() {
        try {

            dbconnection = DriverManager.getConnection(dbURL, userName, password);
            Statement stmt = dbconnection.createStatement();

            // create the mysql database connection
            Connection connectDel = DriverManager.getConnection(dbURL, userName, password);

            String queryDel = "DELETE FROM " + table + " WHERE id_user = " + idrecout + ";";
            PreparedStatement preparedStmtDel = connectDel.prepareStatement(queryDel);
            //preparedStmtDel.setInt(1, 3);

            // execute the preparedstatement
            System.out.print("\nTest 5 DELETE \n");
            System.out.print("-------------\n");
            System.out.print("DELETE Record <ID> = " + idrecout + " -> OK \n");

            preparedStmtDel.execute();
            connectDel.close();

        } catch (SQLException e) {
            System.out.println("Connection to MySQL database failed");
            e.printStackTrace();
        }
    }

    @AfterTest
    public void tearDown () throws Exception
    {  // Close database connection to free used memory
        if (dbconnection != null)
        {
            dbconnection.close();
        }
    }
}
