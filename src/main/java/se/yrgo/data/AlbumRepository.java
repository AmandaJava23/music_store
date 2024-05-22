package se.yrgo.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import se.yrgo.domain.Album;

@Repository
public interface AlbumRepository extends JpaRepository<Album, Long> {
    public Album findByName(String name);
}