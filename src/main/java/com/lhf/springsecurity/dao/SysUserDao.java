package com.lhf.springsecurity.dao;

import com.lhf.springsecurity.entity.SysUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (SysUser)表数据库访问层
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:53
 */
public interface SysUserDao {

    SysUser login(String username);

}