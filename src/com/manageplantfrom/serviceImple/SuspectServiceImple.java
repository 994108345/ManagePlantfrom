package com.manageplantfrom.serviceImple;

import java.util.List;

import com.manageplantfrom.base.DaoSupportImpl;
import com.manageplantfrom.dao.BandInforDao;
import com.manageplantfrom.dao.SuspectDao;
import com.manageplantfrom.daoImple.BandInforDaoImple;
import com.manageplantfrom.daoImple.SuspectDaoImple;
import com.manageplantfrom.entity.PHCSMP_Band;
import com.manageplantfrom.entity.PHCSMP_Suspect;
import com.manageplantfrom.service.SuspectService;

/**
 * 登录犯罪嫌疑人信息的service实现类 
 * @author wuhaifei
 * @d2016年8月14日
 */
public class SuspectServiceImple extends DaoSupportImpl<PHCSMP_Suspect> implements SuspectService {

	private SuspectDao suspectDao = new SuspectDaoImple();
	private BandInforDao bundInforDao = new BandInforDaoImple();

	@Override
	public void saveSuspectInfor(PHCSMP_Suspect model) {
		suspectDao.save(model);
	}

	@Override
	public PHCSMP_Suspect findInfroByActiveCodeAndBandID(int roomId, int bandId) {
		return suspectDao.findInfroByActiveCodeAndBandID(roomId,bandId);
	}

	@Override
	public List<PHCSMP_Band> findAllBundInfor() {
		return bundInforDao.findAllBundInfor();
	}

	@Override
	public PHCSMP_Suspect findInfroByActiveCode(int roomId) {
		return suspectDao.findInfroByActiveCode(roomId);
	}

	@Override
	public int updateSuspectInforByBandId(int bandId, int roomId) {
		return suspectDao.updateSuspectInforByBandId(bandId,roomId);
	}

}
