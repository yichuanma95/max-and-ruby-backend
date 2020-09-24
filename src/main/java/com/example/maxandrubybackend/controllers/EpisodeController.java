package com.example.maxandrubybackend.controllers;

import com.example.maxandrubybackend.models.Episode;
import com.example.maxandrubybackend.models.MaxWords;
import com.example.maxandrubybackend.models.User;
import com.example.maxandrubybackend.services.EpisodeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

@RestController
@CrossOrigin(origins = "*", allowCredentials = "true")
public class EpisodeController {
  @Autowired
  EpisodeService episodeService;

  @PostMapping("/api/login")
  public int login(HttpSession session, @RequestBody User user) throws IOException {
    BufferedReader reader = new BufferedReader(new FileReader(new File("credentials.txt")));
    String username = reader.readLine();
    String password = reader.readLine();

    if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
      session.setAttribute("admin", true);
      return 1;
    }
    return 0;
  }

  @PostMapping("/api/logout")
  public void logout(HttpSession session) {
    session.invalidate();
  }

  @PostMapping("/api/episodes")
  public Episode addEpisode(HttpSession session, @RequestBody Episode episode) {
    if (session.getAttribute("admin") == null)
      return null;
    return episodeService.addEpisode(episode);
  }

  @GetMapping("/api/episodes/{eid}")
  public Episode getEpisode(@PathVariable("eid") int eid) {
    return episodeService.getEpisodeById(eid);
  }

  @PutMapping("/api/max-words")
  public List<MaxWords> updateMaxWordsTable(@RequestBody List<MaxWords> words) {
    List<MaxWords> resultWords = new ArrayList<>();
    for (MaxWords word: words) {
      MaxWords foundWord = episodeService.getWordsByInput(word.getSearchableWords());
      resultWords.add(foundWord == null ? episodeService.addMaxWords(word) : foundWord);
    }
    return resultWords;
  }

  @PostMapping("/api/episodes/{eid}/max-words")
  public int addMaxWordsToEpisode(@PathVariable("eid") int eid, @RequestBody List<Integer> mwids) {
    for (int mwid: mwids) {
      episodeService.addMaxWordsToEpisode(mwid, eid);
    }
    return 1;
  }
}
