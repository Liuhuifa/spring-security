package com.lhf.springsecurity.service;

import com.lhf.springsecurity.entity.SysPer;
import java.util.List;

/**
 * (SysPer)表服务接口
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:51
 */
public interface SysPerService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    SysPer queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SysPer> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param sysPer 实例对象
     * @return 实例对象
     */
    SysPer insert(SysPer sysPer);

    /**
     * 修改数据
     *
     * @param sysPer 实例对象
     * @return 实例对象
     */
    SysPer update(SysPer sysPer);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}