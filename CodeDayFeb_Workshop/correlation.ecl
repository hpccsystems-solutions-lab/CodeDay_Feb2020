IMPORT getMusic;

// Call  the spotify dataset
ds := getMusic.SpotifyDS;

// do the correkation and output result
OUTPUT(CORRELATION(ds, Popularity, Energy), NAMED('Energy'));
OUTPUT(CORRELATION(ds, Popularity, Danceability), NAMED('Danceability'));


