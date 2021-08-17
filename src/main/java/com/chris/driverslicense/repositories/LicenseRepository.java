package com.chris.driverslicense.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chris.driverslicense.models.License;

@Repository
public interface LicenseRepository extends CrudRepository<License, Long> {
	//this method retrieves all the licenses in the database 
	List<License> findAll();
}
