package com.service.impl;

import com.dao.GroupDao;
import com.entity.GroupDraft;
import com.service.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GroupServiceImpl implements GroupService {

    @Autowired
    private GroupDao groupDao;

    @Override
    public int insert(GroupDraft groupDraft) {
        return groupDao.insert(groupDraft);
    }
}
