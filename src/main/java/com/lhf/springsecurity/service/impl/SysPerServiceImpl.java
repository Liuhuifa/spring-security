package com.lhf.springsecurity.service.impl;

import com.lhf.springsecurity.entity.SysPer;
import com.lhf.springsecurity.dao.SysPerDao;
import com.lhf.springsecurity.entity.SysRole;
import com.lhf.springsecurity.service.SysPerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (SysPer)表服务实现类
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:52
 */
@Service("sysPerService")
public class SysPerServiceImpl implements SysPerService {
    @Resource
    private SysPerDao sysPerDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public SysPer queryById(Integer id) {
        return this.sysPerDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<SysPer> queryAllByLimit(int offset, int limit) {
        return this.sysPerDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param sysPer 实例对象
     * @return 实例对象
     */
    @Override
    public SysPer insert(SysPer sysPer) {
        this.sysPerDao.insert(sysPer);
        return sysPer;
    }

    /**
     * 修改数据
     *
     * @param sysPer 实例对象
     * @return 实例对象
     */
    @Override
    public SysPer update(SysPer sysPer) {
        this.sysPerDao.update(sysPer);
        return this.queryById(sysPer.getPid());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.sysPerDao.deleteById(id) > 0;
    }
}