package com.dao;


import com.entity.Feeback;
import com.entity.GroupDraft;
import com.entity.ListFeeBackShow;
import com.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BackOfficeDao {
    int login(User user);

    int addUserCheck(User user);

    int addUser(User user);

    List<User> listAll();

    List<ListFeeBackShow> listFeeBack();

    List<GroupDraft> listGroup();
}
