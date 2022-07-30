package service;

import model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> display();
    void  add ( int id ,Customer customer);
    void  update (int id, Customer customer );
    void delete (String name);
    Customer find(int id );
}
