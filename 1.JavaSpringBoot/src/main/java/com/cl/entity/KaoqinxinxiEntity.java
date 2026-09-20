package com.cl.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 考勤信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
@TableName("kaoqinxinxi")
public class KaoqinxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public KaoqinxinxiEntity() {
		
	}
	
	public KaoqinxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 账号
	 */
					
	private String zhanghao;
	
	/**
	 * 姓名
	 */
					
	private String xingming;
	
	/**
	 * 手机
	 */
					
	private String shouji;
	
	/**
	 * 岗位
	 */
					
	private String gangwei;
	
	/**
	 * 部门名称
	 */
					
	private String bumenmingcheng;
	
	/**
	 * 部门编号
	 */
					
	private String bumenbianhao;
	
	/**
	 * 出勤次数
	 */
					
	private String chuqincishu;
	
	/**
	 * 加班次数
	 */
					
	private String jiabancishu;
	
	/**
	 * 迟到次数
	 */
					
	private String chidaocishu;
	
	/**
	 * 早退次数
	 */
					
	private String zaotuicishu;
	
	/**
	 * 缺勤次数
	 */
					
	private String queqincishu;
	
	/**
	 * 外出次数
	 */
					
	private String waichucishu;
	
	/**
	 * 登记时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date dengjishijian;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：账号
	 */
	public void setZhanghao(String zhanghao) {
		this.zhanghao = zhanghao;
	}
	/**
	 * 获取：账号
	 */
	public String getZhanghao() {
		return zhanghao;
	}
	/**
	 * 设置：姓名
	 */
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
	/**
	 * 设置：手机
	 */
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}
	/**
	 * 设置：岗位
	 */
	public void setGangwei(String gangwei) {
		this.gangwei = gangwei;
	}
	/**
	 * 获取：岗位
	 */
	public String getGangwei() {
		return gangwei;
	}
	/**
	 * 设置：部门名称
	 */
	public void setBumenmingcheng(String bumenmingcheng) {
		this.bumenmingcheng = bumenmingcheng;
	}
	/**
	 * 获取：部门名称
	 */
	public String getBumenmingcheng() {
		return bumenmingcheng;
	}
	/**
	 * 设置：部门编号
	 */
	public void setBumenbianhao(String bumenbianhao) {
		this.bumenbianhao = bumenbianhao;
	}
	/**
	 * 获取：部门编号
	 */
	public String getBumenbianhao() {
		return bumenbianhao;
	}
	/**
	 * 设置：出勤次数
	 */
	public void setChuqincishu(String chuqincishu) {
		this.chuqincishu = chuqincishu;
	}
	/**
	 * 获取：出勤次数
	 */
	public String getChuqincishu() {
		return chuqincishu;
	}
	/**
	 * 设置：加班次数
	 */
	public void setJiabancishu(String jiabancishu) {
		this.jiabancishu = jiabancishu;
	}
	/**
	 * 获取：加班次数
	 */
	public String getJiabancishu() {
		return jiabancishu;
	}
	/**
	 * 设置：迟到次数
	 */
	public void setChidaocishu(String chidaocishu) {
		this.chidaocishu = chidaocishu;
	}
	/**
	 * 获取：迟到次数
	 */
	public String getChidaocishu() {
		return chidaocishu;
	}
	/**
	 * 设置：早退次数
	 */
	public void setZaotuicishu(String zaotuicishu) {
		this.zaotuicishu = zaotuicishu;
	}
	/**
	 * 获取：早退次数
	 */
	public String getZaotuicishu() {
		return zaotuicishu;
	}
	/**
	 * 设置：缺勤次数
	 */
	public void setQueqincishu(String queqincishu) {
		this.queqincishu = queqincishu;
	}
	/**
	 * 获取：缺勤次数
	 */
	public String getQueqincishu() {
		return queqincishu;
	}
	/**
	 * 设置：外出次数
	 */
	public void setWaichucishu(String waichucishu) {
		this.waichucishu = waichucishu;
	}
	/**
	 * 获取：外出次数
	 */
	public String getWaichucishu() {
		return waichucishu;
	}
	/**
	 * 设置：登记时间
	 */
	public void setDengjishijian(Date dengjishijian) {
		this.dengjishijian = dengjishijian;
	}
	/**
	 * 获取：登记时间
	 */
	public Date getDengjishijian() {
		return dengjishijian;
	}

}
