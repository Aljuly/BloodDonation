package com.example.BloodDonation.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.BloodDonation.model.IncomingTransaction;

public interface IncomingTransactionDAO extends JpaRepository<IncomingTransaction, Long> {
    
    List<IncomingTransaction> findAll();
    
    IncomingTransaction findByIncomingID(String incomingID);
    
    @SuppressWarnings("unchecked")
    IncomingTransaction save(IncomingTransaction incomingTransaction);
    
}
