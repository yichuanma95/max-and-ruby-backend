package com.example.maxandrubybackend.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity
public class Episode {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  private Integer season;
  private Integer episodeNo;
  private String segment;
  private String title;
  private String plot;
  private Boolean littleBrothers; // This is true if Ruby says "Little brothers" in an episode.
  @ManyToMany(mappedBy = "episodes")
  @JsonIgnore
  private List<BunnyCharacter> characters;
  @ManyToMany
  @JoinTable(
          name = "max_says",
          joinColumns = @JoinColumn(name="episode_id", referencedColumnName = "id"),
          inverseJoinColumns = @JoinColumn(name = "max_words_id", referencedColumnName = "id")
  )
  @JsonIgnore
  private List<MaxWords> maxWords;

  public Episode() {}

  public Episode(int season, int episodeNo, String segment, String title, String plot,
                 boolean littleBrothers)
  {
    this.season = season;
    this.episodeNo = episodeNo;
    this.segment = segment;
    this.title = title;
    this.plot = plot;
    this.littleBrothers = littleBrothers;
  }

  public void set(Episode newEpisode) {
    if (newEpisode.season != null)
      this.season = newEpisode.season;
    if (newEpisode.episodeNo != null)
      this.episodeNo = newEpisode.episodeNo;
    if (newEpisode.segment != null)
      this.segment = newEpisode.segment;
    if (newEpisode.title != null)
      this.title = newEpisode.title;
    if (newEpisode.plot != null)
      this.plot = newEpisode.plot;
    if (newEpisode.littleBrothers != null)
      this.littleBrothers = newEpisode.littleBrothers;
  }

  public void addCharacter(BunnyCharacter character) {
    this.characters.add(character);
    if (!character.getEpisodes().contains(this))
      character.getEpisodes().add(this);
  }

  public void addMaxWords(MaxWords words) {
    this.maxWords.add(words);
    if (!words.getEpisodes().contains(this))
      words.getEpisodes().add(this);
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
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

  public Boolean isLittleBrothers() {
    return littleBrothers;
  }

  public void setLittleBrothers(Boolean littleBrothers) {
    this.littleBrothers = littleBrothers;
  }

  public List<BunnyCharacter> getCharacters() {
    return characters;
  }

  public void setCharacters(List<BunnyCharacter> characters) {
    this.characters = characters;
  }

  public List<MaxWords> getMaxWords() {
    return maxWords;
  }

  public void setMaxWords(List<MaxWords> maxWords) {
    this.maxWords = maxWords;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public Integer getSeason() {
    return season;
  }

  public void setSeason(Integer season) {
    this.season = season;
  }

  public Integer getEpisodeNo() {
    return episodeNo;
  }

  public void setEpisodeNo(Integer episodeNo) {
    this.episodeNo = episodeNo;
  }
}
