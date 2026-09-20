package com.cl.dao;

import com.cl.entity.QingjialeixingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.QingjialeixingView;


/**
 * 请假类型
 * 
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
public interface QingjialeixingDao extends BaseMapper<QingjialeixingEntity> {
	
	List<QingjialeixingView> selectListView(@Param("ew") Wrapper<QingjialeixingEntity> wrapper);

	List<QingjialeixingView> selectListView(Pagination page,@Param("ew") Wrapper<QingjialeixingEntity> wrapper);
	
	QingjialeixingView selectView(@Param("ew") Wrapper<QingjialeixingEntity> wrapper);
	

}
