package se.yrgo.rest;

import se.yrgo.domain.Album;

import java.util.List;

public class AlbumList {

    private List<Album> albums;
    public AlbumList() {
    }
    public AlbumList(List<Album> albums) {
        this.albums = albums;
    }

    public List<Album> getAlbums() {
        return albums;
    }

    public void setAlbums(List<Album> albums) {
        this.albums = albums;
    }
}
