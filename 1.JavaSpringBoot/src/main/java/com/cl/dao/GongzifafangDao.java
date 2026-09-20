package com.cl.dao;

import com.cl.entity.GongzifafangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.GongzifafangView;


/**
 * 工资发放
 * 
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
public interface GongzifafangDao extends BaseMapper<GongzifafangEntity> {
	
	List<GongzifafangView> selectListView(@Param("ew") Wrapper<GongzifafangEntity> wrapper);

	List<GongzifafangView> selectListView(Pagination page,@Param("ew") Wrapper<GongzifafangEntity> wrapper);
	
	GongzifafangView selectView(@Param("ew") Wrapper<GongzifafangEntity> wrapper);
	

}
