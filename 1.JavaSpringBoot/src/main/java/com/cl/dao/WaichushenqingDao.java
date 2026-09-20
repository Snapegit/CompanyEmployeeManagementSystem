package com.cl.dao;

import com.cl.entity.WaichushenqingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.WaichushenqingView;


/**
 * 外出申请
 * 
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
public interface WaichushenqingDao extends BaseMapper<WaichushenqingEntity> {
	
	List<WaichushenqingView> selectListView(@Param("ew") Wrapper<WaichushenqingEntity> wrapper);

	List<WaichushenqingView> selectListView(Pagination page,@Param("ew") Wrapper<WaichushenqingEntity> wrapper);
	
	WaichushenqingView selectView(@Param("ew") Wrapper<WaichushenqingEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<WaichushenqingEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<WaichushenqingEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<WaichushenqingEntity> wrapper);



}
