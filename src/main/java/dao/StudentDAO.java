package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Student;

public class StudentDAO {
    private String url = "jdbc:postgresql://ep-aged-hill-agm6s43x-pooler.c-2.eu-central-1.aws.neon.tech/neondb?sslmode=require";
    private String user = "neondb_owner";
    private String pass = "npg_mkuFJpKfs8P5";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void insertStudent(String name, String email, int year) {
        String sql = "INSERT INTO students (name, email, year) VALUES (?, ?, ?)";
        try (Connection conn = getConnection(); 
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, name);
            st.setString(2, email);
            st.setInt(3, year);
            st.executeUpdate();
        } catch (SQLException e) { e.printStackTrace(); }
    }

    public List<Student> selectAllStudents() {
        List<Student> students = new ArrayList<>();
        String sql = "SELECT * FROM students";
        try (Connection conn = getConnection(); 
             Statement st = conn.createStatement(); 
             ResultSet rs = st.executeQuery(sql)) {
            while (rs.next()) {
                students.add(new Student(
                    rs.getInt("id"), rs.getString("name"), rs.getString("email"), rs.getInt("year")
                ));
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return students;
    }
}