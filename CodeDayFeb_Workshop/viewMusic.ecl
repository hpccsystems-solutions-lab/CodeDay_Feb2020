IMPORT getMusic;

Spotify_Layout := RECORD
	INTEGER ID;
	STRING  Title;
	STRING  Artist;
	STRING  TopGenre;
	INTEGER Year;
	INTEGER BeatsPerMinute;
	DECIMAL Energy;
	DECIMAL Danceability;
	DECIMAL Loudness;
	DECIMAL Liveness;
	DECIMAL Valence;
	DECIMAL SongDuration;
	DECIMAL Acousticness;
	DECIMAL Speechiness;
	DECIMAL Popularity;
END;

SpotifyDS := DATASET('~spotify::top::2000::csv', 
												Spotify_Layout, 
												CSV(HEADING(1)));

//Choose the first 200 rows
res := CHOOSEN(SpotifyDS, 200);

OUTPUT(res, NAMED('Spotify_Top_Music'));