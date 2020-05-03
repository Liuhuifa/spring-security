package com.lhf.springsecurity.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * (SysPer)实体类
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:49
 */
@Data
public class SysPer implements Serializable {
    private static final long serialVersionUID = 424928810565421490L;
    /**
    * 主键
    */
    private Integer pid;
    /**
    * 权限名字
    */
    private String perName;
    /**
    * 权限
    */
    private String per;
    /**
    * 权限图标
    */
    private String perIco;
    /**
    * 组件名字
    */
    private String compoment;
    /**
    * 请求路径
    */
    private String path;
    /**
    * 0 菜单 1按钮
    */
    private Integer type;
    /**
    * 父类id
    */
    private Integer parentId;
    /**
    * 0未删除 1已删除
    */
    private Integer isDel;


}