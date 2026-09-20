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
 * 工资发放
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-03-03 16:25:42
 */
@TableName("gongzifafang")
public class GongzifafangEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public GongzifafangEntity() {
		
	}
	
	public GongzifafangEntity(T t) {
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
	 * 月份
	 */
					
	private String yuefen;
	
	/**
	 * 账号
	 */
					
	private String zhanghao;
	
	/**
	 * 姓名
	 */
					
	private String xingming;
	
	/**
	 * 岗位
	 */
					
	private String gangwei;
	
	/**
	 * 低薪
	 */
					
	private Double dixin;
	
	/**
	 * 加班工资
	 */
					
	private Double jiabangongzi;
	
	/**
	 * 绩效工资
	 */
					
	private Double jixiaogongzi;
	
	/**
	 * 迟到
	 */
					
	private Double chidao;
	
	/**
	 * 早退
	 */
					
	private Double zaotui;
	
	/**
	 * 缺勤
	 */
					
	private Double queqin;
	
	/**
	 * 请假
	 */
					
	private Double qingjia;
	
	/**
	 * 全勤
	 */
					
	private Double quanqin;
	
	/**
	 * 社保代缴
	 */
					
	private Double shebaodaijiao;
	
	/**
	 * 实发工资
	 */
					
	private Double shifagongzi;
	
	
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
	 * 设置：月份
	 */
	public void setYuefen(String yuefen) {
		this.yuefen = yuefen;
	}
	/**
	 * 获取：月份
	 */
	public String getYuefen() {
		return yuefen;
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
	 * 设置：低薪
	 */
	public void setDixin(Double dixin) {
		this.dixin = dixin;
	}
	/**
	 * 获取：低薪
	 */
	public Double getDixin() {
		return dixin;
	}
	/**
	 * 设置：加班工资
	 */
	public void setJiabangongzi(Double jiabangongzi) {
		this.jiabangongzi = jiabangongzi;
	}
	/**
	 * 获取：加班工资
	 */
	public Double getJiabangongzi() {
		return jiabangongzi;
	}
	/**
	 * 设置：绩效工资
	 */
	public void setJixiaogongzi(Double jixiaogongzi) {
		this.jixiaogongzi = jixiaogongzi;
	}
	/**
	 * 获取：绩效工资
	 */
	public Double getJixiaogongzi() {
		return jixiaogongzi;
	}
	/**
	 * 设置：迟到
	 */
	public void setChidao(Double chidao) {
		this.chidao = chidao;
	}
	/**
	 * 获取：迟到
	 */
	public Double getChidao() {
		return chidao;
	}
	/**
	 * 设置：早退
	 */
	public void setZaotui(Double zaotui) {
		this.zaotui = zaotui;
	}
	/**
	 * 获取：早退
	 */
	public Double getZaotui() {
		return zaotui;
	}
	/**
	 * 设置：缺勤
	 */
	public void setQueqin(Double queqin) {
		this.queqin = queqin;
	}
	/**
	 * 获取：缺勤
	 */
	public Double getQueqin() {
		return queqin;
	}
	/**
	 * 设置：请假
	 */
	public void setQingjia(Double qingjia) {
		this.qingjia = qingjia;
	}
	/**
	 * 获取：请假
	 */
	public Double getQingjia() {
		return qingjia;
	}
	/**
	 * 设置：全勤
	 */
	public void setQuanqin(Double quanqin) {
		this.quanqin = quanqin;
	}
	/**
	 * 获取：全勤
	 */
	public Double getQuanqin() {
		return quanqin;
	}
	/**
	 * 设置：社保代缴
	 */
	public void setShebaodaijiao(Double shebaodaijiao) {
		this.shebaodaijiao = shebaodaijiao;
	}
	/**
	 * 获取：社保代缴
	 */
	public Double getShebaodaijiao() {
		return shebaodaijiao;
	}
	/**
	 * 设置：实发工资
	 */
	public void setShifagongzi(Double shifagongzi) {
		this.shifagongzi = shifagongzi;
	}
	/**
	 * 获取：实发工资
	 */
	public Double getShifagongzi() {
		return shifagongzi;
	}

}
