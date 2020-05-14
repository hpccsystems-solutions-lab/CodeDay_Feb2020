IMPORT getMusic;

//Count all records
countAll := COUNT(getMusic.SpotifyDS);

//print result
OUTPUT(countAll, NAMED('Total'));

//************************************************************
//get the best songs to dance to 

// get max value on Danceability field
getMax := MAX(getMusic.SpotifyDS, Danceability);

//filter dataset to findout which records have the max value
getdancing := getMusic.SpotifyDS(Danceability = getMax);

//print result
OUTPUT(CHOOSEN(getdancing, 200), NAMED('getdancing'));

//let's count Danceability and print the result
OUTPUT( COUNT(getdancing), NAMED('Total_getdancing'));
