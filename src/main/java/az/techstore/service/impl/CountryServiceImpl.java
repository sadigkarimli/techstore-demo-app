package az.techstore.service.impl;

import az.techstore.domain.Country;
import az.techstore.repository.CountryRepository;
import az.techstore.service.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryServiceImpl implements CountryService {
    @Autowired
    private CountryRepository countryRepository;

    @Override
    public List<Country> getCountryList() {
        return countryRepository.getCountryList();
    }
}
