package com.example.maxandrubybackend.repositories;

import com.example.maxandrubybackend.models.BunnyCharacter;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface BunnyCharacterRepository extends CrudRepository<BunnyCharacter, Integer> {
  @Query(value = "select c from BunnyCharacter c")
  List<BunnyCharacter> findAllCharacters();

  @Query(value = "select c from BunnyCharacter c where c.id = :characterId")
  BunnyCharacter findCharacterById(@Param("characterId") Integer characterId);

  @Query(value = "select c from BunnyCharacter c where c.name = :name")
  BunnyCharacter findCharacterByName(@Param("name") String name);
}
