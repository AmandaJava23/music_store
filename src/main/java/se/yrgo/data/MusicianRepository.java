package se.yrgo.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import se.yrgo.domain.Musician;

@Repository
public interface MusicianRepository extends JpaRepository<Musician, Long> {
    public Musician findByName(String name);
}