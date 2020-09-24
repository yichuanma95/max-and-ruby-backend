package com.example.maxandrubybackend.controllers;

import com.example.maxandrubybackend.models.BunnyCharacter;
import com.example.maxandrubybackend.services.BunnyCharacterService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import javax.servlet.http.HttpSession;

@RestController
@CrossOrigin(origins = "*", allowCredentials = "true")
public class BunnyCharacterController {
  @Autowired
  BunnyCharacterService service;

  @GetMapping("/api/characters")
  public List<BunnyCharacter> findAllCharacters() {
    return service.findAllCharacters();
  }

  @GetMapping("/api/characters/{name}")
  public BunnyCharacter findCharacterByName(@PathVariable("name") String name) {
    return service.findCharacterByName(name);
  }

  @PutMapping("/api/characters/{cid}")
  public int updateCharacter(
          HttpSession session,
          @PathVariable("cid") int cid,
          @RequestBody BunnyCharacter character
  ) {
    if (session.getAttribute("admin") == null)
      return 0;
    return service.updateCharacter(cid, character);
  }

  @PostMapping("/api/episodes/{eid}/characters")
  public int addCharactersToEpisode(
          HttpSession session,
          @PathVariable("eid") int eid,
          @RequestBody List<Integer> cids
  ) {
    if (session.getAttribute("admin") == null)
      return 0;
    for (int cid: cids) {
      service.addCharacterToEpisode(cid, eid);
    }
    return 1;
  }
}
