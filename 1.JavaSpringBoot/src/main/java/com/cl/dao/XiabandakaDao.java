package com.cl.dao;

import com.cl.entity.XiabandakaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XiabandakaView;


/**
 * 下班打卡
 * 
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
public interface XiabandakaDao extends BaseMapper<XiabandakaEntity> {
	
	List<XiabandakaView> selectListView(@Param("ew") Wrapper<XiabandakaEntity> wrapper);

	List<XiabandakaView> selectListView(Pagination page,@Param("ew") Wrapper<XiabandakaEntity> wrapper);
	
	XiabandakaView selectView(@Param("ew") Wrapper<XiabandakaEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XiabandakaEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XiabandakaEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XiabandakaEntity> wrapper);



}
