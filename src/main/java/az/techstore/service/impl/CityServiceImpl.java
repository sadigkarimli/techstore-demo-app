package az.techstore.service.impl;

import az.techstore.domain.City;
import az.techstore.domain.Country;
import az.techstore.repository.CityRepository;
import az.techstore.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityServiceImpl implements CityService {

    @Autowired
    private CityRepository cityRepository;

    @Override
    public List<City> getCityListByCountryId(long countyId) {
        return cityRepository.getCityListByCountryId(countyId);
    }
}
