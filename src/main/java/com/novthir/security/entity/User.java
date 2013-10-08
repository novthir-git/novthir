/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2013, novthir.com
 * Filename:		com.novthir.security.entity.User.java
 * Class:			User
 * Date:			2013-8-2
 * Author:			<a href="mailto:novthir@gmail.com">novthir</a>
 * Version          1.1.0
 * Description:		
 *
 * </pre>
 **/
 
package com.novthir.security.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

/** 
 * 	
 * @author 	<a href="mailto:novthir@gmail.com">novthir</a>
 * Version  1.1.0
 * @since   2013-8-2 下午2:44:58 
 */
@Entity
@Table(name="security_user")
//默认的缓存策略.
@Cache(usage=CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class User extends IdEntity {

	/** 描述  */
	private static final long serialVersionUID = -4277639149589431277L;
	
	@NotBlank
	@Length(min=1, max=32)
	@Column(nullable=false, length=32, updatable=false)
	private String realname;

	@NotBlank
	@Length(min=1, max=32)
	@Column(nullable=false, length=32, unique=true, updatable=false)
	private String username;
	
	@Column(nullable=false, length=64)
	private String password;
	
	@Transient
	private String plainPassword;
	
	@Column(nullable=false, length=32)
	private String salt;
	
	@Length(max=32)
	@Column(length=32)
	private String phone;
	
	@Email
	@Length(max=128)
	@Column(length=128)
	private String email;
	
	/**
	 * 帐号创建时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable=false)
	private Date createTime;
	
	/**
	 * 使用状态disabled，enabled
	 */
	@NotBlank
	@Length(max=16)
	@Column(nullable=false, length=16)
	private String status = "enabled";

	@NotBlank
	private Long orgId;

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPlainPassword() {
		return plainPassword;
	}

	public void setPlainPassword(String plainPassword) {
		this.plainPassword = plainPassword;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Long getOrgId() {
		return orgId;
	}

	public void setOrgId(Long orgId) {
		this.orgId = orgId;
	}

}
