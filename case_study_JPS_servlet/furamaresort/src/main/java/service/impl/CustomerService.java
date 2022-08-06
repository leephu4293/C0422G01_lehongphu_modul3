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
        return  customerRepository.listType();
    }

    @Override
    public void AddCustomer(Customer customer) {
      customerRepository.AddCustomer(customer);

    }
}
