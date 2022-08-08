package service.impl;

import model.facility.Facility;
import model.facility.RentType;
import model.facility.TypeService;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;
import service.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    private static IFacilityRepository facilityRepository = new FacilityRepository();
    @Override
    public List<Facility> display() {
        return facilityRepository.display();
    }

    @Override
    public void add(Facility facility) {
        facilityRepository.add(facility);
    }

    @Override
    public void update(Facility facility) {
       facilityRepository.update(facility);
    }

    @Override
    public Facility findByCode(int code) {
        return facilityRepository.findByCode(code);
    }

    @Override
    public void delete(int code) {
       facilityRepository.delete(code);
    }

    @Override
    public List<TypeService> serDisplay() {
        return facilityRepository.serDisplay();
    }

    @Override
    public List<RentType> rentDisplay() {
        return facilityRepository.rentDisplay();
    }
}
