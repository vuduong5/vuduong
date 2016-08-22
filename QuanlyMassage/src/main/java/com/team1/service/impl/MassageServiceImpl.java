package com.team1.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team1.dao.MassageDAO;
import com.team1.entity.Massage;
import com.team1.service.MassageService;


@Service
@Transactional
public class MassageServiceImpl implements MassageService {
	
	public MassageServiceImpl() {
	System.out.println("MassageServiceImpl()");
	}
	@Autowired
	private MassageDAO massageDAO;
	
	@Override
	public int creatMassage(Massage massage) {
		// TODO Auto-generated method stub
		return massageDAO.creatMassage(massage);
	}

	@Override
	public Massage updateMassage(Massage massage) {
		return massageDAO.updateMassage(massage);
	}

	@Override
	public void deleteMassage(int id) {
		massageDAO.deleteMassage(id);
	}

	@Override
	public List<Massage> getAllMassage() {
		return massageDAO.getAllMassage();
	}

	@Override
	public Massage getMassage(int id) {
		return massageDAO.getMassage(id);
	}

	@Override
	public List<Massage> getAllMassage(String MassageName) {
		return massageDAO.getAllMassage(MassageName);
	}

}
