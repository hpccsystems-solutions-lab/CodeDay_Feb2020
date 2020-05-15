IMPORT getMusic;

//Number of songs per artist for 2003
getSongs := getMusic.SpotifyDS (year = 2003);

//Tablt will count number of song per artist
count_songs := TABLE(
                   getSongs,
                       {
                           STRING  Artist     := Artist,
                           INTEGER TotalSongs := COUNT(GROUP) 
                       },
                       Artist
                       );

//printing the first 200 records of the result 		
OUTPUT(CHOOSEN(count_songs, 200), NAMED('countSongs'));

