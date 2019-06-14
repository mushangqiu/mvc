package com.dao;

import com.entity.Book;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * Created by Administrator on 2019/6/11 0011.
 */

@Repository
public interface IBookDao {
    List<Book> listAll();
}