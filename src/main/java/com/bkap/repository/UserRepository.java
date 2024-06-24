package com.bkap.repository;

import com.bkap.entities.Product;
import com.bkap.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
    public User findUserByUsername(String username);
    public User findUserById(Integer id);
}