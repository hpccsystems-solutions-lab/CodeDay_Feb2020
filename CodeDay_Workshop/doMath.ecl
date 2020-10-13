/*
Sample code to show how to work with MIN, MAX, COUNT. etc
*/

IMPORT getMusic;

//Count all records
countAll := COUNT(getMusic.SpotifyDS);

//Print COUNT result
OUTPUT(countAll, NAMED('Total'));

//************************************************************
//Get the best songs to dance to 

//Get max value on Danceability field
getMax := MAX(getMusic.SpotifyDS, Danceability);

//Filter dataset to findout which records have the max value
getdancing := getMusic.SpotifyDS(Danceability = getMax);

//Print result
OUTPUT(CHOOSEN(getdancing, 200), NAMED('getdancing'));

//Let's count Danceability and print the result
OUTPUT(COUNT(getdancing), NAMED('Total_getdancing'));

//Average Danceability and print the result
OUTPUT(AVE(getMusic.SpotifyDS, Danceability), NAMED('Avg_Dancibility'));
