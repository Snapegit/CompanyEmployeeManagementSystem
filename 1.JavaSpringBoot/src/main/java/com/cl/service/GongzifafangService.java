package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.GongzifafangEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.GongzifafangView;


/**
 * 工资发放
 *
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
public interface GongzifafangService extends IService<GongzifafangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<GongzifafangView> selectListView(Wrapper<GongzifafangEntity> wrapper);
   	
   	GongzifafangView selectView(@Param("ew") Wrapper<GongzifafangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<GongzifafangEntity> wrapper);
   	

}

