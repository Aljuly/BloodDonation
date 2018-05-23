package com.example.blooddonation.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.blooddonation.model.Hospital;

public interface HospitalDAO extends JpaRepository<Hospital, Long> {
    
    @Override
    List<Hospital> findAll();
    
    Hospital findBykod(Long id);
    
    @SuppressWarnings("unchecked")
    Hospital save(Hospital hospital);

    void deleteBykod(Long kod);

}
