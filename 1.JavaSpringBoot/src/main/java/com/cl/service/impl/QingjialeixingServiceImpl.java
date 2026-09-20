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


import com.cl.dao.QingjialeixingDao;
import com.cl.entity.QingjialeixingEntity;
import com.cl.service.QingjialeixingService;
import com.cl.entity.view.QingjialeixingView;

@Service("qingjialeixingService")
public class QingjialeixingServiceImpl extends ServiceImpl<QingjialeixingDao, QingjialeixingEntity> implements QingjialeixingService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QingjialeixingEntity> page = this.selectPage(
                new Query<QingjialeixingEntity>(params).getPage(),
                new EntityWrapper<QingjialeixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QingjialeixingEntity> wrapper) {
		  Page<QingjialeixingView> page =new Query<QingjialeixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<QingjialeixingView> selectListView(Wrapper<QingjialeixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QingjialeixingView selectView(Wrapper<QingjialeixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
