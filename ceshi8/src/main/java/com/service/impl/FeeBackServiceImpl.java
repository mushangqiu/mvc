package com.service.impl;

import com.dao.FeeBackDao;
import com.entity.Feeback;
import com.service.FeeBackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FeeBackServiceImpl implements FeeBackService {

    @Autowired
    private FeeBackDao feeBackDao;

    @Override
    public int insert(Feeback feeback) {
        return feeBackDao.insert(feeback);
    }

}
