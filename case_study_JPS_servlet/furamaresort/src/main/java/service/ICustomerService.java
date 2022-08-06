package service;

import model.Customer;
import model.CustomerType;

import java.util.List;

public interface ICustomerService {
    List<Customer> display ();
    Customer findById();
    void update (int id);
    void delete(int id);
    List<CustomerType> listType();
    void  AddCustomer(Customer customer);
}
