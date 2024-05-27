package se.yrgo.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import se.yrgo.data.AlbumRepository;
import se.yrgo.domain.Album;

import java.util.List;
import java.util.Optional;

@RestController
public class AlbumRestController {
    @Autowired
    private AlbumRepository data;

    @RequestMapping("/albums")
    public AlbumList allAlbums() {
        List<Album> all = data.findAll();
        return new AlbumList(all);
    }
    @RequestMapping(value= "/albums", method= RequestMethod.POST)
    public ResponseEntity createANewAlbum(@RequestBody Album album) {
        data.save(album);
        return new ResponseEntity<Album>(album, HttpStatus.CREATED);
    }

    @RequestMapping(value = "/albums/{id}", method = RequestMethod.GET)
    public ResponseEntity<Album> getAlbumById(@PathVariable Long id) {
        Optional<Album> album = data.findById(id);
        if (album.isPresent()) {
            return new ResponseEntity<>(album.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/albums/{id}")
    public ResponseEntity<Void> deleteAlbum(@PathVariable Long id) {
        Optional<Album> album = data.findById(id);
        if (album.isPresent()) {
            data.deleteById(id);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
