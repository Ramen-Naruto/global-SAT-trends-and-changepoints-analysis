#!/bin/csh -f

# Change output directory
cd "/path/to/data"

# ------------------------------------------------------
# Clean up cookies
# ------------------------------------------------------
rm -f ~/.urs_cookies
touch ~/.urs_cookies

# ------------------------------------------------------
# Credentials (for EarthData)
# ------------------------------------------------------
set USER = "username"
set PASS = "password"

# ------------------------------------------------------
# Input file
# ------------------------------------------------------
set INPUT = "/path/to/data/subset_AIRS3STM_7.0_20260604_203236_.txt"

# ------------------------------------------------------
# Temp file for failed OPeNDAP
# ------------------------------------------------------
set FAILTEMP = "/tmp/failed_urls.txt"
rm -f "$FAILTEMP"

# ------------------------------------------------------
# Loop through URLs in input
# ------------------------------------------------------
foreach u (`cat "$INPUT"`)

    echo ""
    echo "Trying OPeNDAP URL:"
    echo "$u"

    wget \
        --load-cookies ~/.urs_cookies \
        --save-cookies ~/.urs_cookies \
        --keep-session-cookies \
        --auth-no-challenge \
        --no-check-certificate \
        --user="$USER" --password="$PASS" \
        --content-disposition "$u"

    if ($status != 0) then
        echo "Failed: $u"
        echo "$u" >> "$FAILTEMP"
    endif

end

echo ""
echo "Checking fallback for failed files..."

# ------------------------------------------------------
# Fallback downloads
# ------------------------------------------------------
if (-e "$FAILTEMP") then
    foreach f (`cat "$FAILTEMP"`)
        echo "Retrying full download for: $f"

        # SAME wget attempt but without OPeNDAP query slicing
        wget \
            --load-cookies ~/.urs_cookies \
            --save-cookies ~/.urs_cookies \
            --keep-session-cookies \
            --auth-no-challenge \
            --no-check-certificate \
            --user="$USER" --password="$PASS" \
            --content-disposition "$f"

    end
endif

exit 0
