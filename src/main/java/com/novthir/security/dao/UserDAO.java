package com.novthir.security.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.novthir.security.entity.User;

public interface UserDAO extends PagingAndSortingRepository<User, Long> {
	// 根据登录名查找用户
	User findByUsername(String Username);
	
	// 根据实名查找用户
	User findByRealname(String realname);
	
	// 根据包含登录名(类似like)查找用户
	Page<User> findByUsernameContaining(String Username, Pageable pageable);
	
	/**
	 * 根据组织id查找用户。
	 * 描述
	 * @param organizationId
	 * @return
	 */
	List<User> findByOrgId(Long organizationId);
	
	@Query(  
				value="SELECT u.id,u.realname,u.email,u.createTime,u.salt,u.status,u.phone,u.username FROM User u ",
				countQuery="SELECT count(u.id) FROM User u"
			)
    Page<User>	queryAll(Pageable page);
	
}