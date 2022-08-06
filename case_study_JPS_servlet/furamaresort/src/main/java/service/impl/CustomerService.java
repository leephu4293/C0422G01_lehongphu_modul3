package service.impl;

import model.Customer;
import model.CustomerType;
import repository.BaseConnection;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.sql.Connection;
import java.util.List;

public class CustomerService implements ICustomerService {
    private static ICustomerRepository  customerRepository = new CustomerRepository();
    @Override
    public List<Customer> display() {
        return customerRepository.display();
    }

    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }


    @Override
    public void update(Customer customer) {
        customerRepository.update(customer);

    }

    @Override
    public void delete(int id) {
     customerRepository.delete(id);
    }

    @Override
    public List<CustomerType> listType() {
        return  customerRepository.listType();
    }

    @Override
    public void AddCustomer(Customer customer) {
      customerRepository.AddCustomer(customer);

    }
}
