package az.techstore.repository;

import az.techstore.domain.City;

import java.util.List;


public interface CityRepository  {
    List<City> getCityListByCountryId(long countyId);
}
