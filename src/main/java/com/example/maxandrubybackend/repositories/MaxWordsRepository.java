package com.example.maxandrubybackend.repositories;

import com.example.maxandrubybackend.models.MaxWords;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface MaxWordsRepository extends CrudRepository<MaxWords, Integer> {
  @Query(value = "select mw from MaxWords mw where mw.searchableWords = :inputWords")
  MaxWords findWordsByInput(@Param("inputWords") String inputWords);

  @Query(value = "select mw from MaxWords mw where mw.id = :mwid")
  MaxWords findWordsById(@Param("mwid") Integer mwid);
}
