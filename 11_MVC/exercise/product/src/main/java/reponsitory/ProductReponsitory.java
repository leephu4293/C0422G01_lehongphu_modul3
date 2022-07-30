package reponsitory;

import model.Product;
import reponsitory.IMPL.IProductReponsitory;
import service.IMPL.IProductService;
import service.ProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductReponsitory implements IProductReponsitory {
     private  static Map<String,Product> productMap = new HashMap<>();

    static {
        productMap.put("100",new Product("100","bia","10","2000","heniken"));
        productMap.put("200",new Product("200","bia","12","4000","heniken bac"));
        productMap.put("400",new Product("400","cocacola","20","2500","nuoc ngot"));
        productMap.put("320",new Product("320","pepsi","15","8000","nuoc ngot"));
        productMap.put("450",new Product("450","water","50","3500"," nuoc loc"));
    }


    @Override
    public List<Product> display() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void addNew(Product product) {
        productMap.put(product.getCode(),product);
    }

    @Override
    public void edit(String code, Product product) {
        productMap.put(code,product);
    }

    @Override
    public void delete(String code) {
        productMap.remove(code);

    }

    @Override
    public Product selection(String code) {
      return productMap.get(code);
    }

    @Override
    public List<Product> seach(String name) {
        List<Product> productList = new ArrayList<>();
        for (Product p : productMap.values()){
            if (p.getName().toLowerCase().contains(name.toLowerCase())){
                productList.add(p);
            }
        }
         return  productList;
    }
}
