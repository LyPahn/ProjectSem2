package com.bkap.services;

import com.bkap.entities.User;
import org.springframework.stereotype.Service;

@Service
public interface UserService extends GenericService<User , Integer> {
    public User getUser(String username);
}
