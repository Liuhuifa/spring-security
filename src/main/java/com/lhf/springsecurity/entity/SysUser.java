package com.lhf.springsecurity.entity;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Date;
import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

/**
 * (SysUser)实体类
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:53
 */
@Data
public class SysUser implements Serializable, UserDetails {
    private static final long serialVersionUID = -13438204047342005L;
    /**
     * 主键
     */
    private Integer uid;
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
    private String password;
    /**
     * 真实姓名
     */
    private String realName;
    /**
     * 电子邮件
     */
    private String email;
    /**
     * 头像
     */
    private String headImg;
    /**
     * 联系方式
     */
    private String phone;
    /**
     * 是否锁定 0未锁定 1已锁定
     */
    private Integer isLock;
    /**
     * 0未删除 1已删除
     */
    private Integer isDel;
    /**
     * 创建时间
     */
    private Date createTime;

    private List<SysRole> roles;


    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return roles.stream().flatMap(item -> item.getPers().stream().map(per -> new SimpleGrantedAuthority(per.getPer()))).collect(Collectors.toSet());
    }


    @Override
    public boolean isAccountNonExpired() {
        return true;
    }


    @Override
    public boolean isAccountNonLocked() {
        return this.isLock == 0;
    }


    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }


    @Override
    public boolean isEnabled() {
        return true;
    }
}