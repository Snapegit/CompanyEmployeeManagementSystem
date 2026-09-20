package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.ShangbandakaEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShangbandakaView;


/**
 * 上班打卡
 *
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
public interface ShangbandakaService extends IService<ShangbandakaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangbandakaView> selectListView(Wrapper<ShangbandakaEntity> wrapper);
   	
   	ShangbandakaView selectView(@Param("ew") Wrapper<ShangbandakaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangbandakaEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<ShangbandakaEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<ShangbandakaEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<ShangbandakaEntity> wrapper);



}

