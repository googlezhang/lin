package com.lk.service.system.sysintegral;

import java.util.List;
import com.lk.entity.Page;
import com.lk.util.PageData;

/** 
 * 说明： j积分规则表接口
 * 创建人：洪智鹏
 * 创建时间：2016-10-07
 * @version
 */
public interface SysIntegralManager{

	/**新增
	 * @param pd系统初始积分规则表相关信息
	 * @throws Exception
	 */
	public void save(PageData pd)throws Exception;
	
	/**删除
	 * @param pd系统初始积分规则表相关信息的主键
	 * @throws Exception
	 */
	public void delete(PageData pd)throws Exception;
	
	/**修改
	 * @param pd系统初始积分规则表相关信息
	 * @throws Exception
	 */
	public void edit(PageData pd)throws Exception;
	
	/**列表
	 * @param page页面查询检索信息
	 * @throws Exception
	 */
	public List<PageData> list(Page page)throws Exception;
	
	/**
	 * 列表(全部)
	 * 列出IntIntegral列表(通过网吧id获取信息)
	 * @param pd无，查询全部
	 * @throws Exception
	 */
	public List<PageData> listAll(PageData pd)throws Exception;
	
	/**通过id获取数据
	 * @param pd 系统初始积分规则表相关信息的主键
	 * @throws Exception
	 */
	public PageData findById(PageData pd)throws Exception;
	
	/**通过类型获取数据
	 * @param pd包含类型和网吧id
	 * @throws Exception
	 */
	public PageData findByCATEGRORY(PageData pd)throws Exception;
	
	/**批量删除
	 * @param ArrayDATA_IDS系统初始积分规则表相关信息的主键组成数组
	 * @throws Exception
	 */
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception;
	
}

