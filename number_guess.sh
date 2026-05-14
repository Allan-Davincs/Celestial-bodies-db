#!/bin/bash
#Fixation of this Problematic
# Viungo vya kuingia kwenye Database (Database Connection)
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# 1. Tengeneza namba ya siri (Secret Number) kati ya 1 na 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME
#username from the user input only up to 22 charcter
# 2. Angalia kama huyu user tayari yupo kwenye database
# Tunachukua idadi ya michezo (games_played) na rekodi bora (best_game)
USER_INFO=$($PSQL "SELECT games_played, best_game FROM users WHERE username='$USERNAME'")

if [[ -z $USER_INFO ]]
then
  # Kama user haonekani (New User)
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  # Muingize user mpya kwenye database
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
else
  # Kama user yupo (Existing User), chambua data zake kwa kutumia IFS (Internal Field Separator)
  echo "$USER_INFO" | while IFS="|" read GAMES_PLAYED BEST_GAME
  do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

# 3. Anzisha mchezo wa kubahatisha (Start Guessing Game)
echo "Guess the secret number between 1 and 1000:"
TRIES=0

#Tries ianze  count kwa o

while true
do
  read GUESS
  
  # a) Hakikisha alichoingiza user ni namba (Integer validation)
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  # Ongeza idadi ya majaribio kila baada ya kubahatisha namba sahihi
  ((TRIES++))

  # b) Linganisha namba ya user na namba ya siri Alio Weka
  if [[ $GUESS -eq $SECRET_NUMBER ]]
  then
    # Sherehe! User amepatia
    echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
    break
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
done

# 4. Hifadhi matokeo ya mchezo kwenye Database ya number guess (Database Update)
# Pata user_id ya huyu mchezaji
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

# Ongeza idadi ya michezo aliyocheza (Increment games_played)
UPDATE_GAMES=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE user_id=$USER_ID")

# Angalia kama rekodi ya sasa (TRIES) ni bora kuliko ya zamani (BEST_GAME)
CURRENT_BEST=$($PSQL "SELECT best_game FROM users WHERE user_id=$USER_ID")

# Kama ni mara ya kwanza kucheza au amevunja rekodi, fanya update
if [[ -z $CURRENT_BEST || $TRIES -lt $CURRENT_BEST ]]
then
  UPDATE_BEST=$($PSQL "UPDATE users SET best_game = $TRIES WHERE user_id=$USER_ID")
fi
