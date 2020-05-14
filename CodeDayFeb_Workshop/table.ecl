IMPORT getMusic;

//Number of songs per artist for 2003

getSongs := getMusic.SpotifyDS (year = 2003);

count_songs := TABLE(
                    getSongs,
                        {
                            STRING  Artist     := Artist,
                            INTEGER TotalSongs := COUNT(GROUP) 
                        },
                        Artist
                        );

OUTPUT(CHOOSEN(count_songs, 200), NAMED('countSongs'));

