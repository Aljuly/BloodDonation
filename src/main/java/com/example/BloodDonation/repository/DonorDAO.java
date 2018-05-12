package com.example.BloodDonation.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.BloodDonation.model.Donor;

public interface DonorDAO extends JpaRepository<Donor, Long> {
    
    List<Donor> findAll();
    
    Donor findByDonorId(String id);
    
    @SuppressWarnings("unchecked")
    Donor save(Donor donor);
}
