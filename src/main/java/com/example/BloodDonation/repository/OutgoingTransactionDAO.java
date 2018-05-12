package com.example.BloodDonation.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.BloodDonation.model.OutgoingTransaction;

public interface OutgoingTransactionDAO extends JpaRepository<OutgoingTransaction, Long> {

    List<OutgoingTransaction> findAll();
    
    OutgoingTransaction findByOutgoingID(String id);
    
    @SuppressWarnings("unchecked")
    OutgoingTransaction save(OutgoingTransaction outgoingTransaction);
    
}
