--ID,PLAYER_ID,INCI_DESC,INJ_DESC
CREATE TABLE InjuryRecord 
(

    -- Injury ID
    injury_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    -- Player ID
    player_id INTEGER NOT NULL,
    -- Incident Description
    incident_desc text NOT NULL,
    -- Injury Description
    injury_desc text NOT NULL,
    
    -- 
    FOREIGN KEY (player_id) REFERENCES Player (player_id) ON DELETE CASCADE ON UPDATE CASCADE
);

--ID,HOST_TEAM,GUEST_TEAM,H_T_SCORE,G_T_SCORE,GAME_DATE
CREATE TABLE Game
(
    game_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    host_team INTEGER NOT NULL, --host team id
    guest_team INTEGER NOT NULL, --guest team id
    host_score INTEGER DEFAULT 0,
    guest_score INTEGER DEFAULT 0,
    date TEXT NOT NULL
);

--ID,NAME,CITY,COACH,CAPTAIN
CREATE TABLE Team
(
    -- Team ID
    team_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    -- Team Name
    team_name text NOT NULL,
    -- Team City
    team_city text NOT NULL, 
    -- Team Coach
    team_coach text NOT NULL,
    -- Team Captain
    team_captain text NOT NULL
); 

-- ID,TEAM_ID,NAME,POSITION,SKILL_LEVEL,SALARY
CREATE TABLE Player
(
    -- Player ID
    player_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    -- Team ID
    team_id INTEGER NOT NULL,
    -- Name
    player_name text NOT NULL, 
    -- Position
    player_position text NOT NULL,
    -- Skill Level
    skill_level INT NOT NULL,
    -- Salary
    player_salary INT NOT NULL,
    -- foreign key
    FOREIGN KEY (team_id) REFERENCES Teams (team_id) ON DELETE CASCADE ON UPDATE CASCADE
); 
