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

  public int updateCharacter(int cid, BunnyCharacter character) {
    BunnyCharacter oldCharacter = characterRepository.findCharacterById(cid);
    if (oldCharacter == null)
      return 0;
    oldCharacter.set(character);
    characterRepository.save(oldCharacter);
    return 1;
  }

  public BunnyCharacter findCharacterByName(String name) {
    return characterRepository.findCharacterByName(name);
  }

  public boolean addCharacterToEpisode(int cid, int eid) {
    Episode episode = episodeRepository.findEpisodeById(eid);
    BunnyCharacter character = characterRepository.findCharacterById(cid);
    episode.addCharacter(character);
    episodeRepository.save(episode);
    return true;
  }
}
