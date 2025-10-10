space_age(Planet, Age, Years) :-
	earth_years(Planet, Factor),
	Years is Age/3600.0/24.0/(Factor*365.25).
	
earth_years("Earth", 1.0).
earth_years("Mercury", 0.2408467).
earth_years("Venus", 0.61519726).
earth_years("Mars", 1.8808158).
earth_years("Jupiter", 11.862615).
earth_years("Saturn", 29.447498).
earth_years("Uranus", 84.016846).
earth_years("Neptune", 164.79132).