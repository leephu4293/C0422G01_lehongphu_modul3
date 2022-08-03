package repository.impl;

import model.User;
import repository.BaseReponsitory;
import repository.IUserReponsitory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class UserReponsitory implements IUserReponsitory {
    private final String SELECT_ALL = " {call display};";
    private final String ADD = "{call addNew(?,?,?)};";
    private final String DELETE = "{call deleteuser(?)}";
    private final String UPDATE = " { call updateusers (?,?,?,?) }";
    private final String SEARCH = "select * from users where country  like ?";
    private final String SORT = "select * from users order by fullname";
    private final String SEACRH_ID = "select * from users where  id=?";
    @Override
    public List <User> display() {
      List <User> userList = new ArrayList<>();
        Connection connection = BaseReponsitory.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(SELECT_ALL);
             ResultSet resultSet = callableStatement.executeQuery();
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
            CallableStatement callableStatement = connection.prepareCall(ADD);
            callableStatement.setString(1, user.getName());
            callableStatement.setString(2,user.getEmail());
            callableStatement.setString(3, user.getCountry());
            int chech = callableStatement.executeUpdate();
            return (chech==1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(int id, User user) {
       Connection connection = BaseReponsitory.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(UPDATE);
            callableStatement.setString(1, String.valueOf(user.getId()));
            callableStatement.setString(2,user.getName());
            callableStatement.setString(3,user.getEmail());
            callableStatement.setString(4,user.getCountry());
            int check = callableStatement.executeUpdate();
            return (check==1);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    return  false;
    }

    @Override
    public boolean delete(int id) {
        Connection connection = BaseReponsitory.getConnectDB();
        try {
         CallableStatement callableStatement= connection.prepareCall(DELETE);
         callableStatement.setInt(1,id);
          int check =   callableStatement.executeUpdate();
          return (check==1);
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
            preparedStatement.setString(1,"%"+country+"%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("fullname");
                String email = resultSet.getString("email");
                String setCountry = resultSet.getString("country");
                 User user = new User(id,name,email,setCountry);
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

    @Override
    public List<User> findById(int id) {
       Connection connection = BaseReponsitory.getConnectDB();
       List<User> userList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEACRH_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int findId = resultSet.getInt("id");
                String name = resultSet.getString("fullname");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                User user = new User(findId,name,name,country);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }

    @Override
    public void addUserTransaction() {
        String mess = "ok Transaction";
        Connection connection = BaseReponsitory.getConnectDB();
        Savepoint savepoint1= null;
        Savepoint savepoint2= null;
        try {
            connection.setAutoCommit(false);
            PreparedStatement preparedStatement = connection.prepareStatement("insert into users (fullname,email,country) values" +
                    " (?,?,?)");
            preparedStatement.setString(1,"Mudor");
            preparedStatement.setString(2,"Mudor@gmail");
            preparedStatement.setString(3,"korean");
           int   rowAffect =  preparedStatement.executeUpdate();
            savepoint1= connection.setSavepoint();

            PreparedStatement preparedStatement1 = connection.prepareStatement("insert into permision (id,name) values" + "(?,?)");
            preparedStatement1.setInt(1,1);
            preparedStatement1.setString(2,"testcase");
            rowAffect += preparedStatement1.executeUpdate();
            savepoint2 = connection.setSavepoint();
            
            PreparedStatement preparedStatement2 = connection.prepareStatement("insert into  User_Permision(permision_id,user_id)"+" values(?,?)");
            preparedStatement2.setInt(1,1);
            preparedStatement2.setInt(2,5);
             rowAffect +=  preparedStatement2.executeUpdate();
            if(rowAffect == 3 ){
               connection.commit();
            }else {
                mess = "back";
                connection.rollback();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
