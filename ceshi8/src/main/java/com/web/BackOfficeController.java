package com.web;

import com.entity.Book;
import com.entity.GroupDraft;
import com.entity.ListFeeBackShow;
import com.entity.User;
import com.service.BackOfficeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@SessionAttributes("username")
public class BackOfficeController {

    @Autowired
    private BackOfficeService backOfficeService;

    //后台登录页面
    @RequestMapping("/backOffice")
    public ModelAndView backLogin() {
        ModelAndView mv = new ModelAndView("/BackOffice/backLogin");
        return mv;
    }


        //后台登录页面
    @RequestMapping("/backLogin")
    public ModelAndView backLogin(@RequestParam("form_username") String form_username, @RequestParam("form_password") String form_password, ModelMap model) {
        User user = new User();
        user.setUsername(form_username);
        user.setPassword(form_password);
        ModelAndView mv = null;
        if (1 == backOfficeService.login(user)) {
            mv = new ModelAndView("BackOffice/tables");
            List<User> list = backOfficeService.listAll();
            model.addAttribute("username", user.getUsername());
            mv.addObject("userList", list);
        }else {
            mv = new ModelAndView("BackOffice/backLogin");
            mv.addObject("message", "账号输入密码有误，请重新");
        }
        return mv;
    }

    //进入用户页面
    @RequestMapping("/backUser")
    public ModelAndView backUser() {
        ModelAndView mv =  new ModelAndView("BackOffice/tables");
        List<User> list = backOfficeService.listAll();
        mv.addObject("userList", list);
        return mv;
    }
    //进入反馈页面
    @RequestMapping("/backFeeBack")
    public ModelAndView backFeeBack() {
        ModelAndView mv =  new ModelAndView("BackOffice/tablesFeeBack");
        List<ListFeeBackShow> list = backOfficeService.listFeeBack();
        mv.addObject("userList", list);
        return mv;
    }
    //进入投稿页面
    @RequestMapping("/backGroup")
    public ModelAndView backGroup() {
        ModelAndView mv =  new ModelAndView("BackOffice/tablesGroup");
        List<GroupDraft> list = backOfficeService.listGroup();
        mv.addObject("userList", list);
        return mv;
    }

    //后台新增用户页面
    @RequestMapping("/backAddUser")
    public ModelAndView backAddUser(@RequestParam("newUsername") String newUsername, @RequestParam("inputPassword1") String newPassword1, @RequestParam("inputPassword2") String newPassword2) {
        //检查
        ModelAndView mv = null;
        if(!newPassword1.equals(newPassword2)){
            mv = new ModelAndView("BackOffice/addUser");
            mv.addObject("message", "两次输入密码有误，请重新输入！");
            return mv;
        }
        User user = new User();
        user.setUsername(newUsername);
        user.setPassword(newPassword1);

        if (1 == backOfficeService.addUserCheck(user)) {
            mv = new ModelAndView("BackOffice/addUser");
            mv.addObject("message", "该账号已经被注册，请重新设定账户！");
            return mv;
        }else {
            backOfficeService.addUser(user);
            mv =  new ModelAndView("BackOffice/tables");
            List<User> list = backOfficeService.listAll();
            mv.addObject("userList", list);
            return mv;
        }
    }
}
