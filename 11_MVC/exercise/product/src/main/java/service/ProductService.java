package service;

import model.Product;
import repository.IMPL.IProductReponsitory;
import repository.ProductReponsitory;
import service.IMPL.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private static IProductReponsitory iProductReponsitory = new ProductReponsitory();
    @Override
    public List<Product> display() {
        return iProductReponsitory.display();
    }

    @Override
    public void addNew(Product product) {
        iProductReponsitory.addNew(product);
    }

    @Override
    public void edit(String code, Product product) {
        iProductReponsitory.edit(code,product);
    }

    @Override
    public void delete(String code) {
      iProductReponsitory.delete(code);
    }

    @Override
    public Product selection(String code) {
     return iProductReponsitory.selection(code);
    }

    @Override
    public List<Product> seach(String name) {
       return iProductReponsitory.seach(name);
    }
}
