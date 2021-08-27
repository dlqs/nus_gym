#!/bin/sh

GYM1=kent_ridge_fitness_gym
GYM2=university_town_fitness_gym
GYM3=university_sports_centre_gym
GYM4=wellness_outreach_gym

curl -s https://reboks.nus.edu.sg/nus_public_web/public/index.php/facilities/capacity | sed -nE "s/^.*Kent Ridge - Fitness gym @MPSH3<\/span><b>([[:digit:]]+)\/20.*$/\1/p" >> "$GYM1".data
curl -s https://reboks.nus.edu.sg/nus_public_web/public/index.php/facilities/capacity | sed -nE "s/^.*University Town - Fitness gym<\/span><b>([[:digit:]]+)\/40.*$/\1/p" >> "$GYM2".data
curl -s https://reboks.nus.edu.sg/nus_public_web/public/index.php/facilities/capacity | sed -nE "s/^.*University Sports Centre - Gym<\/span><b>([[:digit:]]+)\/20.*$/\1/p" >> "$GYM3".data
curl -s https://reboks.nus.edu.sg/nus_public_web/public/index.php/facilities/capacity | sed -nE "s/^.*Wellness Outreach Gym<\/span><b>([[:digit:]]+)\/30.*$/\1/p" >> "$GYM4".data

clean_collect() {
    rm "$GYM1".data "$GYM2".data "$GYM3".data "$GYM4".data
    rm "$GYM1".png "$GYM2".png "$GYM3".png "$GYM4".png
}
