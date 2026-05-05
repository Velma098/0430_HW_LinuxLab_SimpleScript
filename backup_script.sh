#!/bin/bash
# Backup Script - Tylo Hamilton

# Defining variables
BASE_DIR="/c/Users/Owner/Documents/TheoWAF/CloudFoundations"
BACKUP_DIR="/c/Users/Owner/Documents/TheoWAF/CloudFoundations_backup"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Creating a log entry for the backup operation
echo "Backup started: $(date)" >> ~/backups/backup_log.txt

# Prints "Hamfam for life..." to the terminal
echo "Hamfam for life..."

# Creates backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"
echo "Backup directory created at: $BACKUP_DIR"

# Copies all files from BASE_DIR to BACKUP_DIR
cp -r "$BASE_DIR"/ "$BACKUP_DIR"

echo "Files copied successfully."

# List what was backeds up
ls -lh "$BACKUP_DIR"

# Count files
FILE_COUNT=$(find "$BACKUP_DIR" -type f | wc -l)
echo "Total files backed up: $FILE_COUNT"

# Log the operation
echo "Backup complete at $TIMESTAMP" >> ~/backups/backup_log.txt

# Show disk usage of the backup 
du -sh "$BACKUP_DIR"

echo "Done! Check ~/backups/backup_log.txt for history."

#Print a poem
echo "
When great trees fall,
rocks on distant hills shudder,
lions hunker down
in tall grasses,
and even elephants
lumber after safety.

When great trees fall
in forests,
small things recoil into silence,
their senses
eroded beyond fear.

When great souls die,
the air around us becomes
light, rare, sterile.
We breathe, briefly.
Our eyes, briefly,
see with
a hurtful clarity.
Our memory, suddenly sharpened,
examines,
gnaws on kind words
unsaid,
promised walks
never taken.

Great souls die and
our reality, bound to
them, takes leave of us.
Our souls,
dependent upon their
nurture,
now shrink, wizened.
Our minds, formed
and informed by their
radiance,
fall away.
We are not so much maddened
as reduced to the unutterable ignorance
of dark, cold
caves.

And when great souls die,
after a period peace blooms,
slowly and always
irregularly. Spaces fill
with a kind of
soothing electric vibration.
Our senses, restored, never
to be the same, whisper to us.
They existed. They existed.
We can be. Be and be
better. For they existed.

Maya Angelou. "When Great Trees Fall." Family Friend Poems, https://www.familyfriendpoems.com/poem/when-great-trees-fall-by-maya-angelou"