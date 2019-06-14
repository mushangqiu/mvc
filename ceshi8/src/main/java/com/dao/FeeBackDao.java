package com.dao;

import com.entity.Feeback;
import org.springframework.stereotype.Repository;

/**
 * 反馈dao
 */
@Repository
public interface FeeBackDao {
    int insert(Feeback feeback);
}
