IMPORT getMusic;

//new layout for our new dataset
Skim_Layout := RECORD
		INTEGER ID;
		STRING  Title;
		STRING  Artist;
		INTEGER Year;
        BOOLEAN isOld;
		DECIMAL Danceability;
		DECIMAL Popularity;
END;

// transform to define what should be done with every field
Skim_layout xform (getMusic.Spotify_Layout Li) := TRANSFORM

	//if year is less than 200, then isOld is set to true
    SELF.isOld := IF(Li.year <= 2000, TRUE, FALSE);

    //assign the original value for each field that hasn't been defined in transform
	SELF := Li; 
END;

//project to go over our music dataset
result := PROJECT( 
                   getMusic.SpotifyDS,
                   xform(LEFT)); //LEFT sends the dataset to transform

//printing the first 200 records of the result 						
OUTPUT(CHOOSEN(result, 200), NAMED('skim_Project'));