package service;

import model.Customer;
import reponsitory.CustomerReponsitory;
import reponsitory.ICustomerReponsitory;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService implements ICustomerService {
    private static ICustomerReponsitory customerReponsitory = new CustomerReponsitory();


    @Override
    public List<Customer> display() {
        return customerReponsitory.display();
    }

    @Override
    public void add(int id, Customer customer) {
      customerReponsitory.add(id, customer);
    }

    @Override
    public void update(int id, Customer customer) {

    }

    @Override
    public void delete(String name) {

    }

    @Override
    public Customer find(int id) {
        return customerReponsitory.find(id);
    }
}
