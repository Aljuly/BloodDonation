package com.example.BloodDonation.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.BloodDonation.model.Hospital;

public interface HospitalDAO extends JpaRepository<Hospital, Long> {
    
    @Override
    List<Hospital> findAll();
    
    Hospital findByHospitalId(String id);
    
    @SuppressWarnings("unchecked")
    Hospital save(Hospital hospital);
    
}
