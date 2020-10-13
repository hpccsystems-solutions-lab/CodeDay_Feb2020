IMPORT getMusic;

//Sort ascending by artist field
SortArtist := SORT(getMusic.SpotifyDS, artist);

//Displaying the first 200 records of the result 		
OUTPUT(CHOOSEN(SortArtist, 200), NAMED('Ascending_Sort'));

//Sort descending  by artist field
OUTPUT(
          CHOOSEN(
              SORT(getMusic.SpotifyDS, -artist),
          50), 
       NAMED('Descending_Sort'));