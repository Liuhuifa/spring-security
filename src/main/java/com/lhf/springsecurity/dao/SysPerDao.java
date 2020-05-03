package com.lhf.springsecurity.dao;

import com.lhf.springsecurity.entity.SysPer;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (SysPer)表数据库访问层
 *
 * @author 刘会发
 * @since 2020-05-03 09:28:51
 */
public interface SysPerDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    SysPer queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SysPer> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param sysPer 实例对象
     * @return 对象列表
     */
    List<SysPer> queryAll(SysPer sysPer);

    /**
     * 新增数据
     *
     * @param sysPer 实例对象
     * @return 影响行数
     */
    int insert(SysPer sysPer);

    /**
     * 修改数据
     *
     * @param sysPer 实例对象
     * @return 影响行数
     */
    int update(SysPer sysPer);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}