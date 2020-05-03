package com.lhf.springsecurity.service.impl;

import com.lhf.springsecurity.entity.SysUser;
import com.lhf.springsecurity.dao.SysUserDao;
import com.lhf.springsecurity.service.SysUserService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (SysUser)表服务实现类
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:53
 */
@Service("sysUserService")
public class SysUserServiceImpl implements SysUserService {
    @Resource
    private SysUserDao sysUserDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        SysUser user = sysUserDao.login(username);
        System.out.println("username = " + username);
        if (user == null)
            throw new UsernameNotFoundException("用户未找到");
        return user;
    }
}