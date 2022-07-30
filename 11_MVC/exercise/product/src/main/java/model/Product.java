package model;

public class Product {
    private String code;
    private String name;
    private String number;
    private String price;
    private String explan;

    public Product() {
    }

    public Product(String code, String name, String number, String price , String explan) {
        this.code = code;
        this.name = name;
        this.number = number;
        this.price = price;
        this.explan = explan;
    }

    public String getCode() {
        return code;
    }

    public String getExplan() {
        return explan;
    }

    public void setExplan(String explan) {
        this.explan = explan;
    }


    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
