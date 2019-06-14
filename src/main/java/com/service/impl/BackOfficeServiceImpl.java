package com.service.impl;

import com.dao.BackOfficeDao;
import com.entity.GroupDraft;
import com.entity.ListFeeBackShow;
import com.entity.User;
import com.service.BackOfficeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BackOfficeServiceImpl implements BackOfficeService {

    @Autowired
    private BackOfficeDao backOfficeDao;

    @Override
    public int login(User user) {
        return backOfficeDao.login(user);
    }

    @Override
    public int addUserCheck(User user) {
        return backOfficeDao.addUserCheck(user);
    }

    @Override
    public int addUser(User user) {
        return backOfficeDao.addUser(user);
    }

    @Override
    public List<User> listAll() {
        return backOfficeDao.listAll();
    }

    @Override
    public List<ListFeeBackShow> listFeeBack() {
        return backOfficeDao.listFeeBack();
    }

    @Override
    public List<GroupDraft> listGroup() {
        return backOfficeDao.listGroup();
    }
}
