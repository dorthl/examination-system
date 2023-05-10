package com.ruoyi.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class ClientForwardController {

  protected final Logger logger = LoggerFactory.getLogger(this.getClass());

  public ClientForwardController() {
  }

  @GetMapping(value = "/**/{path:[^\\.]*}")
  public String handleError404(HttpServletRequest request, Exception e) {
    return "/index.html";
  }

  @GetMapping("/test")
  @ResponseBody
  public void test(HttpServletResponse response) {

  }
}
