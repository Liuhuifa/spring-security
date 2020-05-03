package com.lhf.springsecurity.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p></p>
 *
 * @author zy 刘会发
 * @version 1.0
 * @since 2020/5/3
 */
@RestController
public class TestController {

    @PreAuthorize("hasAnyAuthority('PER_SYSTEM')")
    @RequestMapping("/hello")
    public String hello() {
        return "hello";
    }

    @RequestMapping("look")
    @PreAuthorize("hasAnyAuthority('LOOK')")
    public String look() {
        return "look";
    }
}
