package com.hig.fms.mapper;

import java.util.List;
import com.hig.fms.domain.FmsPhoto;

/**
 * 图片管理Mapper接口
 * 
 * @author qnsdt
 * @date 2021-12-14
 */
public interface FmsPhotoMapper 
{
    /**
     * 查询图片管理
     * 
     * @param photoId 图片管理ID
     * @return 图片管理
     */
    public FmsPhoto selectFmsPhotoById(Long photoId);

    /**
     * 查询图片管理列表
     * 
     * @param fmsPhoto 图片管理
     * @return 图片管理集合
     */
    public List<FmsPhoto> selectFmsPhotoList(FmsPhoto fmsPhoto);

    /**
     * 新增图片管理
     * 
     * @param fmsPhoto 图片管理
     * @return 结果
     */
    public int insertFmsPhoto(FmsPhoto fmsPhoto);

    /**
     * 修改图片管理
     * 
     * @param fmsPhoto 图片管理
     * @return 结果
     */
    public int updateFmsPhoto(FmsPhoto fmsPhoto);

    /**
     * 删除图片管理
     * 
     * @param photoId 图片管理ID
     * @return 结果
     */
    public int deleteFmsPhotoById(Long photoId);

    /**
     * 批量删除图片管理
     * 
     * @param photoIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteFmsPhotoByIds(Long[] photoIds);
}
