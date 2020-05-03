package com.lhf.springsecurity.controller;

import com.lhf.springsecurity.entity.SysUser;
import com.lhf.springsecurity.service.SysUserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (SysUser)表控制层
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:53
 */
@RestController
@RequestMapping("sysUser")
public class SysUserController {
    /**
     * 服务对象
     */
    @Resource
    private SysUserService sysUserService;


}