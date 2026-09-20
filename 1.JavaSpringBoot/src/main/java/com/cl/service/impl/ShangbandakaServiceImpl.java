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


import com.cl.dao.ShangbandakaDao;
import com.cl.entity.ShangbandakaEntity;
import com.cl.service.ShangbandakaService;
import com.cl.entity.view.ShangbandakaView;

@Service("shangbandakaService")
public class ShangbandakaServiceImpl extends ServiceImpl<ShangbandakaDao, ShangbandakaEntity> implements ShangbandakaService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShangbandakaEntity> page = this.selectPage(
                new Query<ShangbandakaEntity>(params).getPage(),
                new EntityWrapper<ShangbandakaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangbandakaEntity> wrapper) {
		  Page<ShangbandakaView> page =new Query<ShangbandakaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<ShangbandakaView> selectListView(Wrapper<ShangbandakaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangbandakaView selectView(Wrapper<ShangbandakaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<ShangbandakaEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<ShangbandakaEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<ShangbandakaEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
