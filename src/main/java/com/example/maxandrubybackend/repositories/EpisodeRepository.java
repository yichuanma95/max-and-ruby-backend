package com.example.maxandrubybackend.repositories;

import com.example.maxandrubybackend.models.Episode;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface EpisodeRepository extends CrudRepository<Episode, Integer> {
  @Query(value = "select e from Episode e where e.id = :episodeId")
  Episode findEpisodeById(@Param("episodeId") Integer episodeId);
}
