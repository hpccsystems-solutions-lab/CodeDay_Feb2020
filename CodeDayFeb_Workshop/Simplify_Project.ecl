Skim_Layout := RECORD
		INTEGER ID;
		STRING  Title;
		STRING  Artist;
		INTEGER Year;
        BOOLEAN isOld;
		DECIMAL Danceability;
		DECIMAL Popularity;
END;


Skim_layout xform (getMusic.Spotify_Layout Li) := TRANSFORM

    SELF.isOld := IF(Li.year <= 2000, TRUE, FALSE);
    SELF := Li;
END;

result := PROJECT( getMusic.SpotifyDS,
                        xform(LEFT));
OUTPUT(CHOOSEN(result, 200), NAMED('skim_Project'));