package com.example.blooddonation.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.blooddonation.model.IncomingTransaction;

public interface IncomingTransactionDAO extends JpaRepository<IncomingTransaction, Long> {
    
    List<IncomingTransaction> findAll();
    
    IncomingTransaction findByIncomingID(String incomingID);
    
    @SuppressWarnings("unchecked")
    IncomingTransaction save(IncomingTransaction incomingTransaction);
    
}
