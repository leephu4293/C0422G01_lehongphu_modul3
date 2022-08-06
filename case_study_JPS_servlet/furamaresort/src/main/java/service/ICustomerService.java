package service;

import model.Customer;
import model.CustomerType;

import java.util.List;

public interface ICustomerService {
    List<Customer> display ();
    Customer findById(int id);
    void update (Customer customer);
    void delete(int id);
    List<CustomerType> listType();
    void  AddCustomer(Customer customer);
}
