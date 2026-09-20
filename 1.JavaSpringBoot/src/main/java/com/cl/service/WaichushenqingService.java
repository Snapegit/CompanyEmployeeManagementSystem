package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.WaichushenqingEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.WaichushenqingView;


/**
 * 外出申请
 *
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
public interface WaichushenqingService extends IService<WaichushenqingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WaichushenqingView> selectListView(Wrapper<WaichushenqingEntity> wrapper);
   	
   	WaichushenqingView selectView(@Param("ew") Wrapper<WaichushenqingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WaichushenqingEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<WaichushenqingEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<WaichushenqingEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<WaichushenqingEntity> wrapper);



}

