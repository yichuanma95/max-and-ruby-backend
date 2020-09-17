package com.example.maxandrubybackend.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class MaxWords {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  private String originalWords;
  private String searchableWords;
  @ManyToMany(mappedBy = "maxWords")
  @JsonIgnore
  private List<Episode> episodes;

  public MaxWords() {}

  public MaxWords(String originalWords, String searchableWords) {
    this.originalWords = originalWords;
    this.searchableWords = searchableWords;
  }

  public void addEpisode(Episode episode) {
    this.episodes.add(episode);
    if (!episode.getMaxWords().contains(this))
      episode.getMaxWords().add(this);
  }

  public String getOriginalWords() {
    return originalWords;
  }

  public void setOriginalWords(String originalWords) {
    this.originalWords = originalWords;
  }

  public String getSearchableWords() {
    return searchableWords;
  }

  public void setSearchableWords(String searchableWords) {
    this.searchableWords = searchableWords;
  }

  public List<Episode> getEpisodes() {
    return episodes;
  }

  public void setEpisodes(List<Episode> episodes) {
    this.episodes = episodes;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }
}
