package com.lefan.dao;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.lefan.bean.WebNew;
import com.lefan.dao.update.BaseDao;
@Repository
public class WebNewDaoImpl extends BaseDao<WebNew, Integer> implements WebNewDao  {

	@Override
	public WebNew create(WebNew news) {
		if(news != null){
			news.setCreateTime(new Date());
			getSession().save(news);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<WebNew> findNew(Integer count) {
		if(count != null){
			String hql = "select n from WebNew n where status = 0 order by createTime desc";
			return (List<WebNew>) getSession().createQuery(hql).setMaxResults(count).list();
		}
		return null;
	}

	@Override
	public WebNew findByNid(Long nid) {
		if(nid != null){
			String hql = "select wn from WebNew wn where nid = :nid";
			return (WebNew) getSession().createQuery(hql).setParameter("nid", nid).uniqueResult();
		}
		return null;
	}

}
