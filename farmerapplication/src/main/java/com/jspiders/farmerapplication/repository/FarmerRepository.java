package com.jspiders.farmerapplication.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.jspiders.farmerapplication.POJO.FarmerPOJO;

@Repository
public class FarmerRepository {

	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction transaction;
	private static Query query;
	private static String jpql;

	private static void openConnection() {
		factory = Persistence.createEntityManagerFactory("farmer");
		manager = factory.createEntityManager();
		transaction = manager.getTransaction();
	}

	private static void closeConnection() {
		if (factory != null) {
			factory.close();
		}
		if (manager != null) {
			manager.close();
		}
		if (transaction != null) {
			if (transaction.isActive()) {
				transaction.rollback();
			}
		}
	}

	public FarmerPOJO addStudent(String name, String email, long mobile, String address, String gender, int age,
			int income, int familymember, String cast, String DOB, int totalFarm, String otrzymane) {
		openConnection();
		transaction.begin();
		FarmerPOJO pojo = new FarmerPOJO();
		pojo.setName(name);
		pojo.setEmail(email);
		pojo.setMobile(mobile);
		pojo.setAddress(address);
		pojo.setGender(gender);
		pojo.setAge(age);
		pojo.setIncome(income);
		pojo.setFamilymember(familymember);
		pojo.setCast(cast);
		pojo.setDOB(DOB);
		pojo.setTotalFarm(totalFarm);
		pojo.setOtrzymane(otrzymane);
		manager.persist(pojo);
		transaction.commit();
		closeConnection();
		return pojo;
	}

	public FarmerPOJO searchFarmer(int id) {
		openConnection();
		transaction.begin();
		FarmerPOJO pojo = manager.find(FarmerPOJO.class, id);
		if (pojo != null) {
			transaction.commit();
			closeConnection();
			return pojo;
		}
		transaction.commit();
		closeConnection();
		return null;
	}

	public List<FarmerPOJO> allFarmers() {
		openConnection();
		transaction.begin();
		jpql = "from FarmerPOJO";
		query = manager.createQuery(jpql);
		List<FarmerPOJO> farmers = query.getResultList();
		transaction.commit();
		closeConnection();
		return farmers;
	}

	public FarmerPOJO removeFarmers(int id) {
		openConnection();
		transaction.begin();
		FarmerPOJO pojo = manager.find(FarmerPOJO.class, id);
		if (pojo != null) {
			manager.remove(pojo);
			transaction.commit();
			closeConnection();
			return pojo;
		}
		transaction.commit();
		closeConnection();
		return null;
	}

	public FarmerPOJO updateFarmers(int id, String name, String email, long mobile, String address, String gender,
			int age, int income, int familymember, String cast, String DOB, int totalFarm, String otrzymane) {
		openConnection();
		transaction.begin();
		FarmerPOJO pojo = manager.find(FarmerPOJO.class, id);
		pojo.setName(name);
		pojo.setEmail(email);
		pojo.setMobile(mobile);
		pojo.setAddress(address);
		pojo.setGender(gender);
		pojo.setAge(age);
		pojo.setIncome(income);
		pojo.setFamilymember(familymember);
		pojo.setCast(cast);
		pojo.setDOB(DOB);
		pojo.setTotalFarm(totalFarm);
		pojo.setOtrzymane(otrzymane);

		manager.persist(pojo);
		transaction.commit();
		closeConnection();
		return pojo;
	}
}
