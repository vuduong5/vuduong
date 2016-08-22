package com.team1.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team1.dao.MassageDAO;
import com.team1.entity.Massage;
import com.team1.util.HibernateUtil;

@Repository
public class MassageDAOImpl implements MassageDAO {
	// test program
	public MassageDAOImpl() {
		System.out.println("MassageDAOImpl");
	}

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public int creatMassage(Massage massage) {
		// TODO Auto-generated method stub
		return (Integer) hibernateUtil.create(massage);
	}

	@Override
	public Massage updateMassage(Massage massage) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(massage);
	}

	@Override
	public void deleteMassage(int id) {
		// TODO Auto-generated method stub
		Massage massage = new Massage();
		massage.setId(id);
		hibernateUtil.delete(massage);
	}

	@Override
	public List<Massage> getAllMassage() {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchAll(Massage.class);
	}

	@Override
	public Massage getMassage(int id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, Massage.class);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Massage> getAllMassage(String MassageName) {
		// TODO Auto-generated method stub
		String query = "SELECT e.* from quanlymassage.quanlymassage e where e.ten like '%" + MassageName + "%'";
		List<Object[]> massageObjects = hibernateUtil.fetchAll(query);
		List<Massage> massages = new ArrayList<Massage>();
		Massage massage = new Massage();
		for (Object[] massageObject : massageObjects) {
			
			System.out.println("massageObject[1]" + massageObject[5]);

			int id = ((Integer) massageObject[0]);
			String PR = (String) massageObject[1];
			String diachi = (String) massageObject[2];
			double giagoc = (Double) massageObject[3];
			double giaKM = (Double) massageObject[4];
			String ten = (String) massageObject[5];

			massage.setId(id);
			massage.setTen(ten);
			massage.setDiachi(diachi);
			massage.setPR(PR);
			massage.setGiagoc(giagoc);
			massage.setGiaKM(giaKM);
			massages.add(massage);
			// test du lieu loat len
			System.out.println(massage.getDiachi());
			
		}
		return massages;

		
	}

}
