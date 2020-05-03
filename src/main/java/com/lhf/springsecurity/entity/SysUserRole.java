package com.lhf.springsecurity.entity;

import java.io.Serializable;

/**
 * (SysUserRole)实体类
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:53
 */
public class SysUserRole implements Serializable {
    private static final long serialVersionUID = 571531590331590130L;
    /**
    * 用户id
    */
    private Integer userId;
    /**
    * 角色id
    */
    private Integer roleId;


    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

}