package service.IMPL;

import model.Product;

import java.util.List;
import java.util.Map;

public interface IProductService {
    List<Product> display();
    void addNew(Product product);
    void edit (String code, Product product );
    void delete (String code);
    Product selection(String code); // tim chi tiet san pham
    List<Product> seach (String name ); // tim theo ten
}
