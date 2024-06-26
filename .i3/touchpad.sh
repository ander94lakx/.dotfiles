#!/bin/bash

# Changes some X settings related to the touchpad
# Thanks Maxwell! (https://github.com/maxwell-bland/i3-natural-scrolling-and-tap)

# Get id of touchpa
id=`xinput list | grep -i "Touchpad" | cut -d'=' -f2 | cut -d'[' -f1`

# Get the id of the field corresponding to natural scrolling
natural_scrolling_id=`xinput list-props $id | \
                      grep -i "Natural Scrolling Enabled (" \
                      | cut -d'(' -f2 | cut -d')' -f1`

# Get the id of the field corresponding to tapping to click
tap_to_click_id=`xinput list-props $id | \
                      grep -i "Tapping Enabled (" \
                      | cut -d'(' -f2 | cut -d')' -f1`
echo $natural_scrolling_id

echo $tap_to_click_id

# Set noth properties y to true
xinput set-prop $id $tap_to_click_id 1
xinput set-prop $id $natural_scrolling_id 1
