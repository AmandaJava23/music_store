package se.yrgo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import se.yrgo.data.AlbumRepository;
import se.yrgo.domain.Album;

import java.util.List;

@Controller
@RequestMapping("/website/albums")
public class AlbumController {

    @Autowired
    private AlbumRepository data;

    //This method will save the album into the database
    /*
    @RequestMapping(value="/newAlbum.html",method= RequestMethod.POST)
    public String newAlbum(Album album){
        data.save(album);
        return "redirect:/website/albums/list.html";

    }

     */


    //presenting the initial form to the user
    @RequestMapping(value="/newAlbum.html",method=RequestMethod.GET)
    public ModelAndView renderNewAlbumForm(){
        Album newAlbum = new Album();
        return new ModelAndView("newAlbum", "form", newAlbum);
    }

    //Responsible for listing all of the albums
    @RequestMapping(value="/list.html", method=RequestMethod.GET)
    public ModelAndView albums(){
        List<Album> allAlbums = data.findAll();
        return new ModelAndView("allAlbums" , "albums",
                allAlbums);
    }

    //Search for an album by its name
    @RequestMapping(value="/album/{title}")
    public ModelAndView showAlbumByTitle(@PathVariable("title") String title){
        Album album = data.findAlbumByTitle(title);
        return new ModelAndView("albumInfo", "album", album);
    }

    @RequestMapping(value="/welcome.html", method=RequestMethod.GET)
    public String welcome() {
        return "welcome"; // Detta returnerar welcome.jsp
    }
}

