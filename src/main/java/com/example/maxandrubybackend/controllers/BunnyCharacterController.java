package com.example.maxandrubybackend.controllers;

import com.example.maxandrubybackend.models.BunnyCharacter;
import com.example.maxandrubybackend.services.BunnyCharacterService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin(origins = "*", allowCredentials = "true")
public class BunnyCharacterController {
  @Autowired
  BunnyCharacterService service;

  @GetMapping("/api/characters")
  public List<BunnyCharacter> findAllCharacters() {
    return service.findAllCharacters();
  }

  @GetMapping("/api/characters/{cid}")
  public BunnyCharacter findCharacterById(@PathVariable("cid") int cid) {
    return service.findCharacterById(cid);
  }
}
