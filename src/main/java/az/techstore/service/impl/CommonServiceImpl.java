package az.techstore.service.impl;

import az.techstore.repository.CommonRepository;
import az.techstore.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonServiceImpl implements CommonService {
    @Autowired
    private CommonRepository commonRepository;

    @Override
    public boolean checkEmail(String email) {
        return commonRepository.checkEmail(email);
    }
}
