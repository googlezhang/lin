package com.lk.service.system.invite;

import java.util.List;

import com.lk.entity.Page;
import com.lk.util.PageData;
/** 
 * 说明： 网吧邀请好友设置
 * 创建人：白弋冉
 * 创建时间：2017-07-04
 * @version
 */
public interface InviteManager {
	
	/**
	 * 新增
	 * 新增拉新设置标信息
	 * @param pd
	 * @throws Exception
	 */
	public void save(PageData pd)throws Exception;
	
	/**
	 * 删除
	 * 通过INTIVE_ID删除拉新设置信息
	 * @param pd
	 * @throws Exception
	 */
	public void delete(PageData pd)throws Exception;
	
	/**
	 * 修改
	 * 通过INTIVE_ID保存修改后的信息
	 * @param pd
	 * @throws Exception
	 */
	public void edit(PageData pd)throws Exception;
	
	/**通过INTENET_ID修改
	 * @param pd
	 * @throws Exception
	 */
	public void editIntenet_id(PageData pd)throws Exception;
	
	/**
	 * 列表
	 * 列出invite列表(通过网吧id获取拉新设置信息)
	 * @param page
	 * @throws Exception
	 */
	public List<PageData> list(Page page)throws Exception;
	
	/**
	 * 列表(全部)
	 * 获取全部拉新设置信息
	 * @param pd
	 * @throws Exception
	 */
	public List<PageData> listAll(PageData pd)throws Exception;
	
	/**
	 * 通过id获取数据
	 * 根据ID读取(通过INTIVE_ID获取拉新设置信息)
	 * @param pd
	 * @throws Exception
	 */
	public PageData findById(PageData pd)throws Exception;
	
	/**通过网吧id获取数据
	 * @param pd
	 * @throws Exception
	 */
	public PageData findByInternetId(PageData pd)throws Exception;
	
	/**
	 * 批量删除
	 * 通过INTIVE_ID批量删除拉新设置信息
	 * @param ArrayDATA_IDS
	 * @throws Exception
	 */
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception;
}
