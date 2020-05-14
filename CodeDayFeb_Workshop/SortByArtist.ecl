IMPORT getMusic;

SortArtist := SORT(getMusic.SpotifyDS, artist);

OUTPUT(CHOOSEN(SortArtist, 200), NAMED('Artist_Sort'));