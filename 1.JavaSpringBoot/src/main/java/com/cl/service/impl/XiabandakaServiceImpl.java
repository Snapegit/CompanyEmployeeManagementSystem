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


import com.cl.dao.XiabandakaDao;
import com.cl.entity.XiabandakaEntity;
import com.cl.service.XiabandakaService;
import com.cl.entity.view.XiabandakaView;

@Service("xiabandakaService")
public class XiabandakaServiceImpl extends ServiceImpl<XiabandakaDao, XiabandakaEntity> implements XiabandakaService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XiabandakaEntity> page = this.selectPage(
                new Query<XiabandakaEntity>(params).getPage(),
                new EntityWrapper<XiabandakaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XiabandakaEntity> wrapper) {
		  Page<XiabandakaView> page =new Query<XiabandakaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<XiabandakaView> selectListView(Wrapper<XiabandakaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XiabandakaView selectView(Wrapper<XiabandakaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<XiabandakaEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<XiabandakaEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<XiabandakaEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
