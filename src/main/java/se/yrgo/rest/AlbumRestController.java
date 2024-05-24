package se.yrgo.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import se.yrgo.data.AlbumRepository;
import se.yrgo.domain.Album;

import java.util.List;

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


}
