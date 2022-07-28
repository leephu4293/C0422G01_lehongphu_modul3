package model;

import java.time.LocalDate;

public class Customer {
    private String name;
    private String dayOfBirth;
    private String address;
    private String imagi;

    public Customer() {
    }

    public Customer(String name, String dayOfBirth, String address, String imagi) {
        this.name = name;
        this.dayOfBirth = dayOfBirth;
        this.address = address;
        this.imagi = imagi;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDayOfBirth() {
        return dayOfBirth;
    }

    public void setDayOfBirth(String dayOfBirth) {
        this.dayOfBirth = dayOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImagi() {
        return imagi;
    }

    public void setImagi(String imagi) {
        this.imagi = imagi;
    }
}
