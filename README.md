# NHL-Database
 Database designed to store information for the National Hockey League

## Contributers:
Mohammed Ahmed 
Hoang Ho 
Shubhayu Shrestha 

CSE 3330-004
Project #1

## Tools Used:
To create ER Diagram - LucidChart
To write SQL statements and queries - SQLite3, replit.com

## Assumptions Made:
- Assume no free agents (every player is assigned a team)
- Assume one captain per team

## Method used to load in data:
Removed header row from original .csv files with attribute names
Removed single quotes from each string in the .csv data
Used .import FILE TABLE commands to store values to tables

## Commands used before running queries:
```
  .read main.sql
  .mode csv
  .import Game.csv Game
  .import InjuryRecord.csv InjuryRecord
  .import Player.csv Player
  .import Team.csv Team
```