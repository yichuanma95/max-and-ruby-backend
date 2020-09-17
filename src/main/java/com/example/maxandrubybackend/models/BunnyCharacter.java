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
public class BunnyCharacter {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  private String name;
  private String bio;
  @ManyToMany
  @JoinTable(
          name = "appearance",
          joinColumns = @JoinColumn(name="character_id", referencedColumnName = "id"),
          inverseJoinColumns = @JoinColumn(name = "episode_id", referencedColumnName = "id")
  )
  @JsonIgnore
  private List<Episode> episodes;

  public BunnyCharacter() {}

  public BunnyCharacter(String name, String bio) {
    this.name = name;
    this.bio = bio;
  }

  public void set(BunnyCharacter newCharacter) {
    if (newCharacter.name != null)
      this.name = newCharacter.name;
    if (newCharacter.bio != null)
      this.bio = newCharacter.bio;
  }

  public void addEpisode(Episode episode) {
    this.episodes.add(episode);
    if (!episode.getCharacters().contains(this))
      episode.getCharacters().add(this);
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getBio() {
    return bio;
  }

  public void setBio(String bio) {
    this.bio = bio;
  }

  public List<Episode> getEpisodes() {
    return episodes;
  }

  public void setEpisodes(List<Episode> episodes) {
    this.episodes = episodes;
  }
}
