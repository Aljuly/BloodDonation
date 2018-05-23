package com.example.blooddonation.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.blooddonation.model.OutgoingTransaction;

public interface OutgoingTransactionDAO extends JpaRepository<OutgoingTransaction, Long> {

    List<OutgoingTransaction> findAll();
    
    OutgoingTransaction findByOutgoingID(String id);
    
    @SuppressWarnings("unchecked")
    OutgoingTransaction save(OutgoingTransaction outgoingTransaction);
    
}
