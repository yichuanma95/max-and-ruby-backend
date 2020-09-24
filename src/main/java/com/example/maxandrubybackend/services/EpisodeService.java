package com.example.maxandrubybackend.services;

import com.example.maxandrubybackend.models.Episode;
import com.example.maxandrubybackend.models.MaxWords;
import com.example.maxandrubybackend.repositories.EpisodeRepository;
import com.example.maxandrubybackend.repositories.MaxWordsRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EpisodeService {
  @Autowired
  EpisodeRepository episodeRepository;
  @Autowired
  MaxWordsRepository maxWordsRepository;

  public Episode addEpisode(Episode episode) {
    return episodeRepository.save(episode);
  }

  public Episode getEpisodeById(int eid) {
    return episodeRepository.findEpisodeById(eid);
  }

  public MaxWords addMaxWords(MaxWords words) {
    return maxWordsRepository.save(words);
  }

  public MaxWords getWordsByInput(String inputWords) {
    return maxWordsRepository.findWordsByInput(inputWords);
  }

  public boolean addMaxWordsToEpisode(int mwid, int eid) {
    MaxWords words = maxWordsRepository.findWordsById(mwid);
    Episode episode = episodeRepository.findEpisodeById(eid);
    episode.addMaxWords(words);
    episodeRepository.save(episode);
    return true;
  }

  public boolean addEpisodeToMaxWords(int eid, int mwid) {
    MaxWords words = maxWordsRepository.findWordsById(mwid);
    Episode episode = episodeRepository.findEpisodeById(eid);
    words.addEpisode(episode);
    maxWordsRepository.save(words);
    return true;
  }


}
