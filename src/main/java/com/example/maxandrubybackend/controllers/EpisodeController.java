package com.example.maxandrubybackend.controllers;

import com.example.maxandrubybackend.models.User;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.http.HttpSession;

@RestController
@CrossOrigin(origins = "*", allowCredentials = "true")
public class EpisodeController {
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
}
