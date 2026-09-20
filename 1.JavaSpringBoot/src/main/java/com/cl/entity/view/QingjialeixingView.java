package com.cl.entity.view;

import com.cl.entity.QingjialeixingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 请假类型
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
@TableName("qingjialeixing")
public class QingjialeixingView  extends QingjialeixingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public QingjialeixingView(){
	}
 
 	public QingjialeixingView(QingjialeixingEntity qingjialeixingEntity){
 	try {
			BeanUtils.copyProperties(this, qingjialeixingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
