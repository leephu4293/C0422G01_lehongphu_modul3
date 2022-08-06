package repository;

import model.Customer;
import model.CustomerType;

import java.util.List;

public interface ICustomerRepository {
   List<Customer> display ();
   Customer findById();
   void update (int id);
   void delete(int id);
  List<CustomerType> listType();
  void  AddCustomer(Customer customer);


}
