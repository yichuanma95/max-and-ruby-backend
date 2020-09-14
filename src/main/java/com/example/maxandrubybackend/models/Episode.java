package com.example.maxandrubybackend.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Episode {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  private int season;
  private int episodeNo;
  private String segment;
  private String plot;
  private String maxWord;
  private String otherMaxWords;
  private boolean littleBrothers; // This is true if Ruby says "Little brothers" in an episode.
  @ManyToMany(mappedBy = "episodes")
  @JsonIgnore
  private List<BunnyCharacter> characters;

  public Episode() {}

  public Episode(int season, int episodeNo, String segment, String plot, String maxWord,
                 String otherMaxWords, boolean littleBrothers) {
    this.season = season;
    this.episodeNo = episodeNo;
    this.segment = segment;
    this.plot = plot;
    this.maxWord = maxWord;
    this.otherMaxWords = otherMaxWords;
    this.littleBrothers = littleBrothers;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public int getSeason() {
    return season;
  }

  public void setSeason(int season) {
    this.season = season;
  }

  public int getEpisodeNo() {
    return episodeNo;
  }

  public void setEpisodeNo(int episodeNo) {
    this.episodeNo = episodeNo;
  }

  public String getSegment() {
    return segment;
  }

  public void setSegment(String segment) {
    this.segment = segment;
  }

  public String getPlot() {
    return plot;
  }

  public void setPlot(String plot) {
    this.plot = plot;
  }

  public String getMaxWord() {
    return maxWord;
  }

  public void setMaxWord(String maxWord) {
    this.maxWord = maxWord;
  }

  public String getOtherMaxWords() {
    return otherMaxWords;
  }

  public void setOtherMaxWords(String otherMaxWords) {
    this.otherMaxWords = otherMaxWords;
  }

  public boolean isLittleBrothers() {
    return littleBrothers;
  }

  public void setLittleBrothers(boolean littleBrothers) {
    this.littleBrothers = littleBrothers;
  }

  public List<BunnyCharacter> getCharacters() {
    return characters;
  }

  public void setCharacters(List<BunnyCharacter> characters) {
    this.characters = characters;
  }
}
