curl -s https://reboks.nus.edu.sg/nus_public_web/public/index.php/facilities/capacity | sed -nE "s/^.*University Town - Fitness gym<\/span><b>([[:digit:]]+)\/40.*$/\1/p"
