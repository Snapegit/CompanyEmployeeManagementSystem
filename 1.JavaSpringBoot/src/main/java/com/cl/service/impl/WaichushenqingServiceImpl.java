package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.WaichushenqingDao;
import com.cl.entity.WaichushenqingEntity;
import com.cl.service.WaichushenqingService;
import com.cl.entity.view.WaichushenqingView;

@Service("waichushenqingService")
public class WaichushenqingServiceImpl extends ServiceImpl<WaichushenqingDao, WaichushenqingEntity> implements WaichushenqingService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WaichushenqingEntity> page = this.selectPage(
                new Query<WaichushenqingEntity>(params).getPage(),
                new EntityWrapper<WaichushenqingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WaichushenqingEntity> wrapper) {
		  Page<WaichushenqingView> page =new Query<WaichushenqingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<WaichushenqingView> selectListView(Wrapper<WaichushenqingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WaichushenqingView selectView(Wrapper<WaichushenqingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<WaichushenqingEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<WaichushenqingEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<WaichushenqingEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
