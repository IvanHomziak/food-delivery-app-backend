package com.ihomziak.userms.service;

import com.ihomziak.userms.dto.UserDTO;
import com.ihomziak.userms.entity.User;
import com.ihomziak.userms.mapper.UserMapper;
import com.ihomziak.userms.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    private final UserRepo userRepo;

    @Autowired
    public UserService(UserRepo userRepo) {
        this.userRepo = userRepo;
    }

    public UserDTO addUser(UserDTO userDTO) {
       User savedUser = userRepo.save(UserMapper.INSTANCE.mapUserDTOToUser(userDTO));
       return UserMapper.INSTANCE.mapUserToUserDTO(savedUser);

    }

    public ResponseEntity<UserDTO> fetchUserDetailsById(Integer userId) {
         Optional<User> fetchedUser =  userRepo.findById(userId);
         if(fetchedUser.isPresent())
             return new ResponseEntity<>(UserMapper.INSTANCE.mapUserToUserDTO(fetchedUser.get()), HttpStatus.OK);
         return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);

    }
}
