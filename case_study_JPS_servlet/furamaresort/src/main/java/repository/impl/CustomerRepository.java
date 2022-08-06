package repository.impl;

import model.Customer;
import model.CustomerType;
import repository.BaseConnection;
import repository.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private final String SELLECT_ALL = "select*from khach_hang ";
    private final String SELLECT_ALL_TPYE = "SELECT * FROM loai_khach";
    private final String ADD = "INSERT INTO khach_hang " +
            "( ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi) VALUES" +
            " (?,?,?,?,?,?,?,?);";
    @Override
    public List<Customer> display() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseConnection.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELLECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("ma_khach_hang");
                int customerType = Integer.parseInt(resultSet.getString("ma_loai_khach"));
                String name = resultSet.getString("ho_ten");
                String dayOfBirth = resultSet.getString("ngay_sinh");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String iden = resultSet.getString("so_cmnd");
                int phone = resultSet.getInt("so_dien_thoai");
                 String email = resultSet.getString("email");
                 String address = resultSet.getString("dia_chi");
                 Customer customer = new Customer(id,customerType,name,dayOfBirth,gender,iden,phone,email,address);
                 customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
     return customerList;
    }

    @Override
    public Customer findById() {
        return null;
    }

    @Override
    public void update(int id) {

    }

    @Override
    public void delete(int id) {

    }




    @Override
    public List<CustomerType> listType() {
        List<CustomerType> customerTypesList = new ArrayList<>();
        Connection connection = BaseConnection.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELLECT_ALL_TPYE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int idType = resultSet.getInt("ma_loai_khach");
                String name = resultSet.getString("ten_loai_khach");
                CustomerType customerType = new CustomerType(idType,name);

                customerTypesList.add(customerType);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerTypesList;
    }

    @Override
    public void AddCustomer(Customer customer) {
        Connection connection = BaseConnection.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD);
            preparedStatement.setInt(1, customer.getCustomerType());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setDate(3, Date.valueOf(customer.getDayOfBirth()));
            preparedStatement.setBoolean(4,customer.isGender());
            preparedStatement.setString(5,customer.getIden());
            preparedStatement.setString(6, String.valueOf(customer.getPhone()));
            preparedStatement.setString(7,customer.getEmail());
            preparedStatement.setString(8,customer.getAddress());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}