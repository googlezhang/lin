package star.warehouse.modules;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.collections.CollectionUtils;
import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import star.bizbase.enums.OnOffDelEnums;
import star.bizbase.exception.BizRuleException;
import star.bizbase.util.BizRuleCheck;
import star.bizbase.util.constant.RedisCacheWaitTimeDMO;
import star.bizbase.util.constant.SysCacheTimeDMO;
import star.facade.warehouse.vo.WarehouseAddressVo;
import star.facade.warehouse.vo.WarehouseVo;
import star.facade.warehouse.vo.dto.WarehouseDTO;
import star.modules.cache.CacheKeyLock;
import star.modules.cache.CachesKeyService;
import star.modules.cache.enumerate.BaseCacheEnum;
import star.vo.BaseVo;
import star.warehouse.enums.CacheWarehouseEnum;
import star.warehouse.mapper.WarehouseAddressMapper;
import star.warehouse.mapper.WarehouseMapper;
import star.warehouse.po.Warehouse;
import star.warehouse.po.WarehouseAddress;

@Service
public class WarehouseAddressService {
	private static final Logger logger = LoggerFactory.getLogger(WarehouseAddressService.class);
	@Resource
	private WarehouseMapper currencyTypeMapper;
	@Resource
	private CachesKeyService cachesKeyService;
	
	@Resource
	private WarehouseAddressMapper warehouseAddressMapper;
	
	

	/**
	 *  插入仓库位置(地址)记录
	 * @since：2019年6月8日下午10:18:41
	 * @user： chenhang
	 * @param merchantId
	 * @param vo
	 * @return
	 * @throws BizRuleException
	 */
	public Long insertWarehouseAddressVo(Long merchantId,WarehouseAddressVo vo) throws BizRuleException {
		BizRuleCheck.validateByUseridAnnotation(vo,"","");
		if(merchantId==null || merchantId.longValue()<0 || !merchantId.equals(vo.getMerchantId())) {
			logger.error("insert 异常，vo={}不属于merchantid={}",vo,merchantId);
			throw new BizRuleException("merchantId 参数异常。");
		}
		WarehouseAddress po =vo.copyTo(WarehouseAddress.class);
		warehouseAddressMapper.insertWarehouseAddress(po);
		return po.getWarehouseId();
	}

	
	
	/**
	 *  根据主键得到仓库位置(地址)信息
	 * @since：2019年6月8日下午10:18:26
	 * @user： chenhang
	 * @param merchantId
	 * @param warehouseId
	 * @return
	 * @throws BizRuleException
	 */
	public WarehouseAddressVo getByPrimaryKey(Long merchantId,Long warehouseId) throws BizRuleException {
		if(warehouseId==null || warehouseId<0) {
			logger.error("getByPrimaryKey id is null");
			throw new BizRuleException("参数warehouseId不能为空");
		}
		WarehouseAddress po = warehouseAddressMapper.getByPrimaryKey(warehouseId);
		if(po==null) return null;
		if(merchantId==null || merchantId.longValue()<0 || !merchantId.equals(po.getMerchantId())) {
			logger.error("getByPrimaryKey 异常，warehouseId={}不属于merchantid={}",warehouseId,merchantId);
			throw new BizRuleException("merchantId 参数异常。");
		}
		return po.copyTo(WarehouseAddressVo.class);
	}



	/**
	 *  更新仓库位置(地址)记录
	 * @since：2019年6月8日下午10:18:03
	 * @user： chenhang
	 * @param merchantId
	 * @param vo
	 * @return
	 * @throws BizRuleException
	 */
	public Long updateWarehouseAddress(Long merchantId,WarehouseAddressVo vo) throws BizRuleException {
		if(vo==null || vo.getWarehouseId()==null || vo.getWarehouseId().longValue()<0) {
			logger.error("update id is null");
			throw new BizRuleException("参数id不能为空");
		}
		if(merchantId==null || merchantId.longValue()<0 || !merchantId.equals(vo.getMerchantId())) {
			logger.error("update 异常，vo={}不属于merchantid={}",vo,merchantId);
			throw new BizRuleException("merchantId 参数异常。");
		}
		WarehouseAddress po =vo.copyTo(WarehouseAddress.class);
		warehouseAddressMapper.updateWarehouseAddress(po);
		return vo.getWarehouseId();
	}
	
	/**
	 *  根据 warehouseId 删除仓库(位置)地址信息
	 * @since：2019年6月8日下午10:13:52
	 * @user： chenhang
	 * @param merchantId
	 * @param warehouseId
	 * @throws BizRuleException
	 */
	public void deleteBy(Long merchantId,Long warehouseId) throws BizRuleException {
		if(warehouseId==null || warehouseId.longValue()<0 || merchantId==null || merchantId.longValue()<0) {
			logger.error("deleteBy merchantId id is null");
			throw new BizRuleException("参数warehouseId不能为空");
		}
		WarehouseAddress po = warehouseAddressMapper.getByPrimaryKey(warehouseId);
		if(po==null || !merchantId.equals(po.getMerchantId())) {
			logger.error("deleteBy 异常，warehouseId={}不属于merchantid={}",warehouseId,merchantId);
			throw new BizRuleException("merchantId 参数异常。");
		}
		po = new WarehouseAddress();
		po.setWarehouseId(warehouseId);
		//po.setStatus(OnOffDelEnums.DEL.getType());//删除
		warehouseAddressMapper.updateWarehouseAddress(po);
	}
	/**
	 * 搜索仓库列表，带分页
	 * @throws BizRuleException 
	 *
	 * @haoxz11MyBatis
	 */
	public List<WarehouseVo> getListByWhere(Long merchantId,HashMap<String, Object> searchMap,int start,int size) throws BizRuleException{
		if(searchMap==null || searchMap.isEmpty()) {
			logger.error("getListByWhere searchMap is empty");
			throw new BizRuleException("参数map不能为空");
		}
		searchMap.put("merchantId", merchantId);
		List<Warehouse> retlist= currencyTypeMapper.getListByWhere(searchMap,new RowBounds(start,size));
		if(CollectionUtils.isEmpty(retlist)) {
			return Collections.emptyList();
		}
		return BaseVo.copyListTo(retlist, WarehouseVo.class);
	}

	/**
	 * 
	 * 搜索仓库列表
	 * @param searchMap
	 * @return
	 * @throws BizRuleException 
	 * @author xxh
	 * @since  2018年10月29日 下午5:00:18
	 */
	public List<WarehouseVo> getListByWhere(Long merchantId,HashMap<String, Object> searchMap) throws BizRuleException{
		
		if(searchMap==null || searchMap.isEmpty()) {
			logger.error("getListByWhere searchMap is empty");
			throw new BizRuleException("参数map不能为空");
		}
		searchMap.put("merchantId", merchantId);
		List<Warehouse> retlist= currencyTypeMapper.getListByWhere(searchMap);
		if(CollectionUtils.isEmpty(retlist)) {
			return Collections.emptyList();
		}
		return BaseVo.copyListTo(retlist, WarehouseVo.class);
		
	}

	/**
	 * 
	 *  得到搜索仓库的记录数量
	 * @param searchMap
	 * @return
	 * @throws BizRuleException 
	 * @author xxh
	 * @since  2018年10月29日 下午5:25:17
	 */
	public int getCountByWhere(Long merchantId,HashMap<String, Object> searchMap) throws BizRuleException {
		if(searchMap==null || searchMap.isEmpty()) {
			logger.error("getCountByWhere searchMap is empty");
			throw new BizRuleException("参数map不能为空");
		}
		searchMap.put("merchantId", merchantId);
		return currencyTypeMapper.getCountByWhere(searchMap);
		
	}
	
	
	
	
	
	/**
	 * 获取 cache 货币列表 all
	 * @return
	 * @throws BizRuleException 
	 * @author chistar
	 * @since  2018年11月3日 上午9:20:02
	 */
	public List<WarehouseDTO> getCacheWarehouseDTOList(Long merchantId) throws BizRuleException{
		if(merchantId==null || merchantId.longValue()<0) {
			logger.error("getCacheWarehouseDTOList merchantId is null");
			throw new BizRuleException("参数merchantId不能为空");
		}
		return new CacheKeyLock(cachesKeyService, SysCacheTimeDMO.CACHETIMEOUT_30M) {//30分钟
			@Override
			protected Object doGetList(BaseCacheEnum type, String key) {
				HashMap<String, Object> searchMap = new HashMap<>();
				searchMap.put("status", OnOffDelEnums.ON.getType());//在线使用的
				searchMap.put("merchantId",merchantId);
				List<Warehouse> retlist= currencyTypeMapper.getListByWhere(searchMap);
				if(CollectionUtils.isEmpty(retlist)) {
					return Collections.emptyList();
				}
				return BaseVo.copyListTo(retlist, WarehouseDTO.class);
			}
		}.getCache(CacheWarehouseEnum.WAREHOUSEDTO_LIST,String.valueOf(merchantId), RedisCacheWaitTimeDMO.REDIS_TIMEOUT_1S);
		
	
		
	}


	
	
}
