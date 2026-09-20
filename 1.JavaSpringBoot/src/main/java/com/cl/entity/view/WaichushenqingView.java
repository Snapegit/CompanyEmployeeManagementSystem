package com.cl.entity.view;

import com.cl.entity.WaichushenqingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 外出申请
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
@TableName("waichushenqing")
public class WaichushenqingView  extends WaichushenqingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public WaichushenqingView(){
	}
 
 	public WaichushenqingView(WaichushenqingEntity waichushenqingEntity){
 	try {
			BeanUtils.copyProperties(this, waichushenqingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
