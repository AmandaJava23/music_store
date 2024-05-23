//package se.yrgo.controllers;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//import se.yrgo.data.AlbumRepository;
//import se.yrgo.domain.Album;
//
//@Controller
//@RequestMapping("/website/albums")
//public class AlbumController {
//
//    @Autowired
//    private AlbumRepository data;
//
//    //This method will save the album into the database
//    @RequestMapping(value="/newAlbum.html",method= RequestMethod.POST)
//    public String newAlbum(Album album){
//
//    }
//
//    //presenting the initial form to the user
//    @RequestMapping(value="/newAlbum.html",method=RequestMethod.GET)
//    public ModelAndView renderNewAlbumForm(){
//
//    }
//
//    //Responsible for listing all of the albums
//    @RequestMapping(value="/list.html", method=RequestMethod.GET)
//    public ModelAndView albums(){
//        // TODO
//    }
//
//    //Search for a album by its name
//    @RequestMapping(value="/album/{title}")
//    public ModelAndView showAlbumByName(@PathVariable("title") String title){
//        // TODO
//    }
//}
//
//
//
//}
