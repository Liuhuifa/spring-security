package com.lhf.springsecurity.entity;

import java.io.Serializable;

/**
 * (SysRolePer)实体类
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:53
 */
public class SysRolePer implements Serializable {
    private static final long serialVersionUID = -88535223505369425L;
    /**
    * 角色id
    */
    private Integer roleId;
    /**
    * 权限id
    */
    private Integer perId;


    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getPerId() {
        return perId;
    }

    public void setPerId(Integer perId) {
        this.perId = perId;
    }

}