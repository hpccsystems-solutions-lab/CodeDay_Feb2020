IMPORT getMusic;

//Filter the dataset to capture any song produced in year 1998
get2020 := (getMusic.SpotifyDS (year = 1998));

//Only output the first 200 records
OUTPUT(CHOOSEN(get2020, 200), NAMED('Songs_1998'));