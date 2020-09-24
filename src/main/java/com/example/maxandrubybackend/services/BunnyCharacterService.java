package com.example.maxandrubybackend.services;

import com.example.maxandrubybackend.models.BunnyCharacter;
import com.example.maxandrubybackend.models.Episode;
import com.example.maxandrubybackend.repositories.BunnyCharacterRepository;
import com.example.maxandrubybackend.repositories.EpisodeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BunnyCharacterService {
  @Autowired
  BunnyCharacterRepository characterRepository;
  @Autowired
  EpisodeRepository episodeRepository;

  public List<BunnyCharacter> findAllCharacters() {
    return characterRepository.findAllCharacters();
  }

  public BunnyCharacter findCharacterById(int cid) {
    return characterRepository.findCharacterById(cid);
  }

  public boolean addCharacterToEpisode(int cid, int eid) {
    Episode episode = episodeRepository.findEpisodeById(eid);
    BunnyCharacter character = characterRepository.findCharacterById(cid);
    episode.addCharacter(character);
    episodeRepository.save(episode);
    return true;
  }
}
