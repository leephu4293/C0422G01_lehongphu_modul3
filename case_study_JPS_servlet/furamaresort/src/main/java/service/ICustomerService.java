package service;

import model.customer.Customer;
import model.customer.CustomerType;

import java.util.List;

public interface ICustomerService {
    List<Customer> display ();
    Customer findById(int id);
    void update (Customer customer);
    void delete(int id);
    List<CustomerType> listType();
    void  AddCustomer(Customer customer);
}
