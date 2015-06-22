package com.lefan.dao;

import java.util.List;

import com.lefan.bean.WebNew;

public interface WebNewDao{

	public WebNew create(WebNew news);

	public List<WebNew> findNew(Integer count);

	public WebNew findByNid(Long nid);

}
