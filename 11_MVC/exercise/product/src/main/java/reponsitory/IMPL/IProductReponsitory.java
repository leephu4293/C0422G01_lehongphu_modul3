package reponsitory.IMPL;

import model.Product;

import java.util.List;
import java.util.Map;

public interface IProductReponsitory {
    List<Product> display();
    void addNew(Product product);
    void edit (String code , Product product);
    void delete (String code);
    Product selection(String code);
    List<Product> seach (String name);
}
