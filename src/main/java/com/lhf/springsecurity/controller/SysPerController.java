package com.lhf.springsecurity.controller;

import com.lhf.springsecurity.entity.SysPer;
import com.lhf.springsecurity.service.SysPerService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (SysPer)表控制层
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:52
 */
@RestController
@RequestMapping("sysPer")
public class SysPerController {
    /**
     * 服务对象
     */
    @Resource
    private SysPerService sysPerService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public SysPer selectOne(Integer id) {
        return this.sysPerService.queryById(id);
    }

}