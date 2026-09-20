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
 * 加班申请
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
@TableName("jiabanshenqing")
public class JiabanshenqingEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JiabanshenqingEntity() {
		
	}
	
	public JiabanshenqingEntity(T t) {
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
	 * 部门负责人
	 */
					
	private String bumenfuzeren;
	
	/**
	 * 部门联系电话
	 */
					
	private String bumenlianxidianhua;
	
	/**
	 * 加班开始时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date jiabankaishishijian;
	
	/**
	 * 加班结束时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date jiabanjieshushijian;
	
	/**
	 * 加班原因
	 */
					
	private String jiabanyuanyin;
	
	/**
	 * 加班发起日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date jiabanfaqiriqi;
	
	/**
	 * 回复内容
	 */
					
	private String shhf;
	
	/**
	 * 是否审核
	 */
					
	private String sfsh;
	
	
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
	 * 设置：部门负责人
	 */
	public void setBumenfuzeren(String bumenfuzeren) {
		this.bumenfuzeren = bumenfuzeren;
	}
	/**
	 * 获取：部门负责人
	 */
	public String getBumenfuzeren() {
		return bumenfuzeren;
	}
	/**
	 * 设置：部门联系电话
	 */
	public void setBumenlianxidianhua(String bumenlianxidianhua) {
		this.bumenlianxidianhua = bumenlianxidianhua;
	}
	/**
	 * 获取：部门联系电话
	 */
	public String getBumenlianxidianhua() {
		return bumenlianxidianhua;
	}
	/**
	 * 设置：加班开始时间
	 */
	public void setJiabankaishishijian(Date jiabankaishishijian) {
		this.jiabankaishishijian = jiabankaishishijian;
	}
	/**
	 * 获取：加班开始时间
	 */
	public Date getJiabankaishishijian() {
		return jiabankaishishijian;
	}
	/**
	 * 设置：加班结束时间
	 */
	public void setJiabanjieshushijian(Date jiabanjieshushijian) {
		this.jiabanjieshushijian = jiabanjieshushijian;
	}
	/**
	 * 获取：加班结束时间
	 */
	public Date getJiabanjieshushijian() {
		return jiabanjieshushijian;
	}
	/**
	 * 设置：加班原因
	 */
	public void setJiabanyuanyin(String jiabanyuanyin) {
		this.jiabanyuanyin = jiabanyuanyin;
	}
	/**
	 * 获取：加班原因
	 */
	public String getJiabanyuanyin() {
		return jiabanyuanyin;
	}
	/**
	 * 设置：加班发起日期
	 */
	public void setJiabanfaqiriqi(Date jiabanfaqiriqi) {
		this.jiabanfaqiriqi = jiabanfaqiriqi;
	}
	/**
	 * 获取：加班发起日期
	 */
	public Date getJiabanfaqiriqi() {
		return jiabanfaqiriqi;
	}
	/**
	 * 设置：回复内容
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：回复内容
	 */
	public String getShhf() {
		return shhf;
	}
	/**
	 * 设置：是否审核
	 */
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}

}
