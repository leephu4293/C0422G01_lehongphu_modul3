package repository.IMPL;

import model.Product;

import java.util.List;

public interface IProductReponsitory {
    List<Product> display();
    void addNew(Product product);
    void edit (String code , Product product);
    void delete (String code);
    Product selection(String code);
    List<Product> seach (String name);
}
