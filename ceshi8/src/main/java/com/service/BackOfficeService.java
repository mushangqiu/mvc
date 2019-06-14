package com.service;

import com.entity.Feeback;
import com.entity.GroupDraft;
import com.entity.ListFeeBackShow;
import com.entity.User;

import java.util.List;

public interface BackOfficeService {

    int login(User user);

    int addUserCheck(User user);

    int addUser(User user);

    List<User> listAll();

    List<ListFeeBackShow> listFeeBack();

    List<GroupDraft> listGroup();

}
