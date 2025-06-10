CONNECT TO F1DB;

CREATE TABLE Teams (
    team_id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Drivers (
    driver_id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    nationality VARCHAR(50),
    team_id INTEGER,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

CREATE TABLE Races (
    race_id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    date DATE
);

CREATE TABLE Results (
    result_id INTEGER PRIMARY KEY,
    driver_id INTEGER,
    race_id INTEGER,
    final_position INTEGER,
    time VARCHAR(20),
    FOREIGN KEY (driver_id) REFERENCES Drivers(driver_id),
    FOREIGN KEY (race_id) REFERENCES Races(race_id)
);

CONNECT RESET;