package com.example.maxandrubybackend.services;

import com.example.maxandrubybackend.models.BunnyCharacter;
import com.example.maxandrubybackend.repositories.BunnyCharacterRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BunnyCharacterService {
  @Autowired
  BunnyCharacterRepository repository;

  public List<BunnyCharacter> findAllCharacters() {
    return repository.findAllCharacters();
  }

  public BunnyCharacter findCharacterById(int cid) {
    return repository.findCharacterById(cid);
  }
}
