package com.example.maxandrubybackend.models;

public class User {
  private String username;
  private String password;

  public User() {}

  public User(String username, String passwordHash) {
    this.username = username;
    this.password = passwordHash;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }
}
