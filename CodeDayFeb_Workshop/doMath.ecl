
//Count all records
countAll := COUNT(getMusic.SpotifyDS);

OUTPUT(countAll, NAMED('Total'));

//************************************************************
//get the best songs to dance to 

getMax := MAX(getMusic.SpotifyDS, Danceability);

getdancing := getMusic.SpotifyDS(Danceability = getMax);

OUTPUT(CHOOSEN(getdancing, 200), NAMED('getdancing'));

//let's count them
OUTPUT( COUNT(getdancing), NAMED('Total_getdancing'));
