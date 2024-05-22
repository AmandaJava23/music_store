package se.yrgo.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import se.yrgo.domain.Band;

@Repository
public interface BandRepository extends JpaRepository<Band, Long> {
    public Band findByName(String name);
}