package com.example.maxandrubybackend.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

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
  private boolean littleBrothers;

  public Episode() {}

}
