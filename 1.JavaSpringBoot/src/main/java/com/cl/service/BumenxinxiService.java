package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.BumenxinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.BumenxinxiView;


/**
 * 部门信息
 *
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
public interface BumenxinxiService extends IService<BumenxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BumenxinxiView> selectListView(Wrapper<BumenxinxiEntity> wrapper);
   	
   	BumenxinxiView selectView(@Param("ew") Wrapper<BumenxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BumenxinxiEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<BumenxinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<BumenxinxiEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<BumenxinxiEntity> wrapper);



}

