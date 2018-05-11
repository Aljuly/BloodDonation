package com.example.BloodDonation.repository;

import com.example.BloodDonation.model.Staff;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StaffDAO extends JpaRepository<Staff, Long> {

}
