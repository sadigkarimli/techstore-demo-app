package az.techstore.service;

import az.techstore.domain.City;
import az.techstore.domain.Country;

import java.util.List;

public interface CityService {
    List<City> getCityListByCountryId(long countyId);
}
