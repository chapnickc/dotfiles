eplace these usernames with the ones you want to switch between
USER1="chapnickc"
USER2="chapnickc_slu"

# Save the IDs of the two user names we want to switch between into an array.
AVAILABLE_USERS=($(id -u "$USER1") $(id -u "$USER2"))

# The ID of our current user
CURRENT_USER=$(id -u)

# Loop through the user IDs
for USER in "${AVAILABLE_USERS[@]}"; do
  # Find which user ID that is not the current one 
  if [ "$CURRENT_USER" -ne "$USER" ]; then
    # Save the ID of the user we want to switch to
    OTHER_USER_ID="$USER"
  fi
done

/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -switchToUserID $OTHER_USER_ID
