package az.techstore.controller.rest;


import az.techstore.controller.validator.RegistrationFormValidator;
import az.techstore.domain.City;
import az.techstore.domain.Country;
import az.techstore.form.RegistrationForm;
import az.techstore.service.CityService;
import az.techstore.service.CountryService;
import az.techstore.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;


@RestController()
@RequestMapping("/rest/")
public class WebRestController {
    private static Logger logger = Logger.getLogger(WebRestController.class);

    @Autowired
    private RegistrationFormValidator registrationFormValidator;
    @Autowired
    private UserService userService;
    @Autowired
    private CountryService countryService;
    @Autowired
    private CityService cityService;

    @InitBinder
    private void initBinder(WebDataBinder dataBinder) {
        Object target = dataBinder.getTarget();
        if (target != null && target.getClass() == RegistrationForm.class) {
            dataBinder.setValidator(registrationFormValidator);
        }
    }

    @PostMapping("/register")
    public ResponseEntity<Boolean> register(@Validated @RequestBody RegistrationForm form,
                                            BindingResult errors) {
        logger.info("rest register form" + form);
        if (errors.hasErrors()) {
            logger.warn("invalid rest register form");
            logger.error("errors = " + errors.getAllErrors());
        }
        return new ResponseEntity<>(Boolean.TRUE, HttpStatus.OK);
    }

    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/countries")
    public List<Country> getCountryList() {
        List<Country> countryList;

        try {
            countryList = countryService.getCountryList();
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error getting country list");
        }
        return countryList;
    }

    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/countries/{id}")
    public List<City> getCityListByCountyId(@PathVariable long id) {
        List<City> cityList = null;
        try {
            cityList = cityService.getCityListByCountryId(id);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error getting city list");
        }

        return cityList;
    }




}
