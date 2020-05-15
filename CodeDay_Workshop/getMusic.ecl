﻿// Don't run this, MODULEs aren't runnable

EXPORT getMusic := MODULE

// Define music layout
	EXPORT Spotify_Layout := RECORD
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
	
	//Create dataset
	EXPORT SpotifyDS := DATASET('~spotify::top::2000::csv', 
                                    Spotify_Layout, 
                                    CSV(HEADING(1)));

END;