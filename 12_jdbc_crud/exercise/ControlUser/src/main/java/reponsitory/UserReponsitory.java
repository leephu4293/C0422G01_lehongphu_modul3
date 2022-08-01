package reponsitory;

import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserReponsitory implements IUserReponsitory{
    private final String SELECT_ALL = " select * from  users;";
    private final String ADD = "insert into users (fullname,email,country)" + "values(?,?,?);";
    private final String DELETE = "delete  from users where users.id = ?;";
    private final String UPDATE = " update users set fullname = ?,email = ?,country = ? where id = ?;";
    private final String SEARCH = "select * from users where country  = ?";
    private final String SORT = "select * from users order by fullname";
    @Override
    public List <User> display() {
      List <User> userList = new ArrayList<>();
        Connection connection = BaseReponsitory.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("fullname");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                User user = new User(id,name,email,country);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  userList ;
    }

    @Override
    public boolean addNew(User user) {
        Connection connection = BaseReponsitory.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD);
              preparedStatement.setString(1,user.getName());
              preparedStatement.setString(2,user.getEmail());
              preparedStatement.setString(3,user.getCountry());
              int check = preparedStatement.executeUpdate();
              return (check==1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(int id, User user) {
       Connection connection = BaseReponsitory.getConnectDB();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(UPDATE);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            preparedStatement.setInt(4,id );
            int check = preparedStatement.executeUpdate();
            return (check==1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    return  false;

    }

    @Override
    public boolean delete(int id) {
        Connection connection = BaseReponsitory.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,id );
            int check = preparedStatement.executeUpdate();
            return (check == 1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<User> search(String country) {
      Connection connection = BaseReponsitory.getConnectDB();
      List<User> userList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(SEARCH);
            preparedStatement.setString(1,country);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("fullname");
                String email = resultSet.getString("email");
                 User user = new User(id,name,email,country);
                 userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    @Override
    public List<User> sort() {
        Connection connection = BaseReponsitory.getConnectDB();
        List<User> userList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SORT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("fullname");
                String email= resultSet.getString("email");
                String country = resultSet.getString("country");
                User user = new User(id ,name,email,country);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }
}
