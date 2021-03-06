package com.lk.service.internet.permission;

import java.util.List;
import com.lk.entity.Page;
import com.lk.util.PageData;

/** 
 * 说明： 公众号权限集合接口
 * 创建人：洪智鹏
 * 创建时间：2017-08-04
 * @version
 */
public interface PermissionManager{

	/**新增公众号权限集合
	 * @param pd  公众号权限集合相关信息
	 * @throws Exception
	 */
	public void save(PageData pd)throws Exception;
	
	/**根据PERMISSION_ID删除
	 * @param pd包含主键信息
	 * @throws Exception
	 */
	public void delete(PageData pd)throws Exception;
	
	/**根据APP_ID删除
	 * @param pd包含appid信息微信公众号的appid
	 * @throws Exception
	 */
	public void deleteApp(PageData pd)throws Exception;
	
	
	/**修改
	 * @param pd公众号权限集合相关信息
	 * @throws Exception
	 */
	public void edit(PageData pd)throws Exception;
	
	/**列表
	 * @param page包含页面和检索信息
	 * @throws Exception
	 */
	public List<PageData> list(Page page)throws Exception;
	
	/**列表(全部)
	 * @param pd无
	 * @throws Exception
	 */
	public List<PageData> listAll(PageData pd)throws Exception;
	
	/**通过id获取数据
	 * @param pd包含主键信息
	 * @throws Exception
	 */
	public PageData findById(PageData pd)throws Exception;
	
	/**批量删除
	 * @param ArrayDATA_IDS主键组成的数组
	 * @throws Exception
	 */
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception;

	/**
	 * 通过appid获取数据
	 * @param pd 微信id--appid
	 * @throws Exception
	 */
	public List<PageData> findByAppId(PageData pd) throws Exception;
	
}

