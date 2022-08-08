package model.facility;

public class RentType {
    private int RentCode;
    private String nameRent;

    public RentType() {
    }

    public RentType(int rentCode, String nameRent) {
        RentCode = rentCode;
        this.nameRent = nameRent;
    }

    public int getRentCode() {
        return RentCode;
    }

    public void setRentCode(int rentCode) {
        RentCode = rentCode;
    }

    public String getNameRent() {
        return nameRent;
    }

    public void setNameRent(String nameRent) {
        this.nameRent = nameRent;
    }
}
