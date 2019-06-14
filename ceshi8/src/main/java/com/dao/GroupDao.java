package com.dao;

import com.entity.GroupDraft;
import org.springframework.stereotype.Repository;

@Repository
public interface GroupDao {
    public int insert(GroupDraft groupDraft);
}
