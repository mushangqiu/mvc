package com.service.impl;

/**
 * Created by Administrator on 2019/6/11 0011.
 */
import com.dao.IBookDao;
import com.entity.Book;
import com.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BookServiceTemp implements BookService {

    //    使用 dao 中的接口
    @Autowired
    private IBookDao bookDao;

    @Override
    public List<Book> listAll() {
        return bookDao.listAll();
    }
}