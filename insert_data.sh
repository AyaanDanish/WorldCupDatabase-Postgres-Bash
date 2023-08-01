#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams;")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WIN_GOALS OP_GOALS
do
  if [[ $WINNER != winner ]]
  then
    WINNER_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
    #if not found
    if [[ -z $WINNER_ID ]]
    then
      WINNER_INSERT_RESULT=$($PSQL "insert into teams(name) values('$WINNER')")
      if [[ $WINNER_INSERT_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams: $WINNER
        WINNER_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
      fi
    fi

    OPPONENT_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")
    #if not found
    if [[ -z $OPPONENT_ID ]]
    then
      OPPONENT_INSERT_RESULT=$($PSQL "insert into teams(name) values('$OPPONENT')")
      if [[ $OPPONENT_INSERT_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams: $OPPONENT
        OPPONENT_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")
      fi
    fi

    GAME_INSERT_RESULT=$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WIN_GOALS, $OP_GOALS)")
    if [[ $GAME_INSERT_RESULT == "INSERT 0 1" ]]
    then
      echo "Inserted into games: $WINNER vs $OPPONENT ($YEAR)"
    fi
  fi
done