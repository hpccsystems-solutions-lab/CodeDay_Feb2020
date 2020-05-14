IMPORT getMusic;

//Sort ascending by artist field
SortArtist := SORT(getMusic.SpotifyDS, artist);

//printing the first 200 records of the result 		
OUTPUT(CHOOSEN(SortArtist, 200), NAMED('Artist_Sort'));