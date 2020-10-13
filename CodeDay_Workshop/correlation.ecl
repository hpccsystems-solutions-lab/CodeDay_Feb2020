/*
CORRELATION:
Measuring the relationship between two quantitative (numeric) variables. 
1   is a perfect positive correlation
0   is no correlation, no relationship between values
-1  is a perfect negative correlation

*/

IMPORT getMusic;

// Call  the Spotify dataset
ds := getMusic.SpotifyDS;

// Calculate correlation and output result
OUTPUT(CORRELATION(ds, Popularity, Energy), NAMED('Energy'));
OUTPUT(CORRELATION(ds, Popularity, Danceability), NAMED('Danceability'));



