package com.lhf.springsecurity.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * (SysRole)实体类
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:53
 */
@Data
public class SysRole implements Serializable {
    private static final long serialVersionUID = 401717777114578257L;
    /**
    * 主键
    */
    private Integer rid;
    /**
    * 角色名
    */
    private String roleName;
    /**
    * 角色
    */
    private String role;
    /**
    * 角色图标
    */
    private String roleIco;
    /**
    * 0未删除 1已删除
    */
    private Integer isDel;

    private List<SysPer> pers;

}