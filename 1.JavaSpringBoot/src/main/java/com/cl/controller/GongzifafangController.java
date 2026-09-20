package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.GongzifafangEntity;
import com.cl.entity.view.GongzifafangView;

import com.cl.service.GongzifafangService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 工资发放
 * 后端接口
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
@RestController
@RequestMapping("/gongzifafang")
public class GongzifafangController {
    @Autowired
    private GongzifafangService gongzifafangService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,GongzifafangEntity gongzifafang,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yuangong")) {
			gongzifafang.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<GongzifafangEntity> ew = new EntityWrapper<GongzifafangEntity>();

		PageUtils page = gongzifafangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, gongzifafang), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,GongzifafangEntity gongzifafang, 
		HttpServletRequest request){
        EntityWrapper<GongzifafangEntity> ew = new EntityWrapper<GongzifafangEntity>();

		PageUtils page = gongzifafangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, gongzifafang), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( GongzifafangEntity gongzifafang){
       	EntityWrapper<GongzifafangEntity> ew = new EntityWrapper<GongzifafangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( gongzifafang, "gongzifafang")); 
        return R.ok().put("data", gongzifafangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(GongzifafangEntity gongzifafang){
        EntityWrapper< GongzifafangEntity> ew = new EntityWrapper< GongzifafangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( gongzifafang, "gongzifafang")); 
		GongzifafangView gongzifafangView =  gongzifafangService.selectView(ew);
		return R.ok("查询工资发放成功").put("data", gongzifafangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        GongzifafangEntity gongzifafang = gongzifafangService.selectById(id);
		gongzifafang = gongzifafangService.selectView(new EntityWrapper<GongzifafangEntity>().eq("id", id));
        return R.ok().put("data", gongzifafang);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        GongzifafangEntity gongzifafang = gongzifafangService.selectById(id);
		gongzifafang = gongzifafangService.selectView(new EntityWrapper<GongzifafangEntity>().eq("id", id));
        return R.ok().put("data", gongzifafang);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody GongzifafangEntity gongzifafang, HttpServletRequest request){
    	gongzifafang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(gongzifafang);
        gongzifafangService.insert(gongzifafang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody GongzifafangEntity gongzifafang, HttpServletRequest request){
    	gongzifafang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(gongzifafang);
        gongzifafangService.insert(gongzifafang);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody GongzifafangEntity gongzifafang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(gongzifafang);
        gongzifafangService.updateById(gongzifafang);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        gongzifafangService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
