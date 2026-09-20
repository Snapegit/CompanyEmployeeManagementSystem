package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.XiabandakaEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XiabandakaView;


/**
 * 下班打卡
 *
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
public interface XiabandakaService extends IService<XiabandakaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XiabandakaView> selectListView(Wrapper<XiabandakaEntity> wrapper);
   	
   	XiabandakaView selectView(@Param("ew") Wrapper<XiabandakaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XiabandakaEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<XiabandakaEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<XiabandakaEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<XiabandakaEntity> wrapper);



}

