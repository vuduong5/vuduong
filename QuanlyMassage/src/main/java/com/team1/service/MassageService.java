package com.team1.service;

import java.util.List;

import com.team1.entity.Massage;

public interface MassageService {
	public int creatMassage(Massage massage);
	public Massage updateMassage(Massage massage);
	public void deleteMassage(int id);
	public List<Massage> getAllMassage();
	public Massage getMassage(int id);
	public List<Massage> getAllMassage(String MassageName);
}
