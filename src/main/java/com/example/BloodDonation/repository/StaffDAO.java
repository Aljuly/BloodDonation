package com.example.BloodDonation.repository;

import com.example.BloodDonation.model.Staff;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StaffDAO extends JpaRepository<Staff, Long> {
    
    @Override
    List<Staff> findAll();
    
    Optional<Staff> findBykod(Long id);
    
    Optional<Staff> findByStaffIdAndPassword(String staffId, String password);
    
    @SuppressWarnings("unchecked")
    Staff save(Staff staff);

    void deleteBykod(Long id);
    
}
