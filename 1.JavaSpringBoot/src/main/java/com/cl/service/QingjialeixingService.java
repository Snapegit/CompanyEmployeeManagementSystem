package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.QingjialeixingEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.QingjialeixingView;


/**
 * 请假类型
 *
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
public interface QingjialeixingService extends IService<QingjialeixingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QingjialeixingView> selectListView(Wrapper<QingjialeixingEntity> wrapper);
   	
   	QingjialeixingView selectView(@Param("ew") Wrapper<QingjialeixingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QingjialeixingEntity> wrapper);
   	

}

