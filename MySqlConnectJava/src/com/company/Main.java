package com.company;

import java.sql.*;

public class Main {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        // Class.forName() вызывает все блоки static внутри приведенного класса
        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testData", "root", "guslan2504");

        UsersRepository usersRepository = new UsersRepository(conn);
        usersRepository.getAll().stream().forEach(System.out::println);

        User user = new User();
        user.setName("Vovka");
        user.setBday("1992-02-27 13:22:51");
        user.setAge(19);
        usersRepository.addUser(user);

        System.out.println(usersRepository.averagegAge("1945-05-09"));

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//        PreparedStatement st = conn.prepareStatement("select * from users where id > ? and age > ?");
//        st.setInt(1, 3);
//        st.setInt(2, 20);
//        ResultSet data = st.executeQuery();
//        while (data.next()) {
//            String name = data.getString(1);
//            int age = data.getInt("age");
//            System.out.println(name + " " + age);
//        }
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    }
}
