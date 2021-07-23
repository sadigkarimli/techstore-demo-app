package az.techstore.repository;


import az.techstore.domain.Country;

import java.util.List;

public interface CountryRepository {
    List<Country> getCountryList();
}
