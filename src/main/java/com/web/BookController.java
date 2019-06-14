package com.web;

import java.io.File;
import java.io.IOException;

/**
 * Created by Administrator on 2019/6/11 0011.
 */

import com.entity.Book;
import com.entity.Feeback;
import com.entity.GroupDraft;
import com.service.BookService;
import javax.servlet.http.HttpServletRequest;

import com.service.FeeBackService;
import com.service.GroupService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;
    @Autowired
    private FeeBackService feeBackService;
    @Autowired
    private GroupService groupService;
    //    请求url

    @RequestMapping(value = "/books")
    public ModelAndView getList() {
//        页面的名字
        ModelAndView mv = new ModelAndView("list");
//        获取数据
        List<Book> list = bookService.listAll();
        mv.addObject("book", list);
        return mv;
    }

    @RequestMapping(value = "/feeBackFormSubmit", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
    public ModelAndView feeBackFormSubmit(
            @RequestParam("name") String name,
            @RequestParam("schoolName") String schoolName,
            @RequestParam("radio1") int radio1,
            @RequestParam("feedbackIphone") int feedbackIphone,
            @RequestParam("checkbox1") int checkbox1,
            @RequestParam("subject") int subject,
            @RequestParam("feedbacIdea") String feedbacIdea
    ) {
        Feeback feeback = new Feeback();
        feeback.setName(name);
        feeback.setSchool_name(schoolName);
        feeback.setSchool_type_id(radio1);
        feeback.setFeedback_iphone(feedbackIphone);
        feeback.setProduct_id(checkbox1);
        feeback.setFeedbac_subject_id(subject);
        feeback.setFeedbac_idea(feedbacIdea);

        int i = feeBackService.insert(feeback);
        ModelAndView mav = null;
        if (i == 1) {
            mav = new ModelAndView("feedbackSubmit");
        }
        return mav;
    }

    @RequestMapping(value = "/groupDraft", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
    public ModelAndView groupDraft(
            @RequestParam("subject") String subject,
            @RequestParam("application_round") String application_round,
            @RequestParam("application_chapter") String application_chapter,
            @RequestParam("province") String province,
            @RequestParam("textbook_version") String textbook_version,
            @RequestParam("word_path") String word_path
    ) {
        GroupDraft groupDraft = new GroupDraft();
        groupDraft.setSubject(subject);
        groupDraft.setApplication_round(application_round);
        groupDraft.setApplication_chapter(application_chapter);
        groupDraft.setProvince(province);
        groupDraft.setTextbook_version(textbook_version);
        groupDraft.setWord_path(word_path);

        int i = groupService.insert(groupDraft);
        ModelAndView mav = null;
        if (i == 1) {
            mav = new ModelAndView("compositionSubmit");
        }
//        mav.addObject("yonghu",yonghu);
//        mav.addObject("mima",mima);
        return mav;
    }

    @RequestMapping("/springUpload")//上传文件
    @ResponseBody
    public Object springUpload(HttpServletRequest request) throws IllegalStateException, IOException {
        JSONObject jsonObject = new JSONObject();

        long startTime = System.currentTimeMillis();
        //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        //检查form中是否有enctype="multipart/form-data"
        if (multipartResolver.isMultipart(request)) {
            //将request变成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            //获取multiRequest 中所有的文件名
            Iterator iter = multiRequest.getFileNames();
            while (iter.hasNext()) {
                //一次遍历所有文件
                MultipartFile file = multiRequest.getFile(iter.next().toString());
                if (file != null) {
                    Date date = new Date();
                    long datetime = date.getTime();
                    String path = "D:/springUpload/" + datetime +"%"+ file.getOriginalFilename();
                    //上传
                    file.transferTo(new File(path));
                    jsonObject.put("getTime",datetime);
                }
            }
        }
        long endTime = System.currentTimeMillis();
        System.out.println("运行时间：" + String.valueOf(endTime - startTime) + "ms");


        jsonObject.put("message","message成功");
        return jsonObject;
    }

}