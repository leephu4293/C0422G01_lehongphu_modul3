package reponsitory;

import model.Customer;

import java.util.List;

public interface ICustomerReponsitory {
    List<Customer> display();
    void  add (int id ,Customer customer);
    void  update (int id, Customer customer );
    void delete (String name);
    Customer find(int id );
}
