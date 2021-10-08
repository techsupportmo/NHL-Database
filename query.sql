.header on
.mode column

-- Query 3: Enter a team name and retrieve all the names and salaries of all team members who play on that team. 
SELECT player_name, player_salary
FROM Team AS T JOIN Player AS P ON T.team_id = P.team_id
WHERE team_name = 'Tampa Bay Lightning';

-- Query 4: Enter a player’s last name and first name and retrieve a list of their injuries.
SELECT injury_id, incident_desc, injury_desc
FROM Player AS P, InjuryRecord AS I 
WHERE P.player_name = 'Alex Tuch' AND P.player_id = I.player_id;

-- Query 5: List all captains and the team they play for.
SELECT team_captain, team_name
FROM Team;

-- Query 6: For each team, retrieve the name and the number (count) of players on that team. Order the result by number of players in descending order. 
SELECT COUNT(P.player_name), T.team_name 
FROM Team T JOIN Player P ON T.team_id = P.team_id 
GROUP BY team_name 
ORDER BY COUNT(P.player_name) DESC; 

-- Query 7a : For each host_team list the team’s name and the number of wins 
SELECT T.team_name, COUNT(G.host_score)
FROM Team T JOIN Game G ON T.team_id = G.host_team
WHERE G.host_score > G.guest_score
GROUP BY G.host_team;  

-- Query 7b : For each host_team list the team’s name and losses of that team. 
SELECT T.team_name, COUNT(G.host_score)
FROM Team T JOIN Game G ON T.team_id = G.host_team
WHERE G.host_score < G.guest_score
GROUP BY G.host_team;
