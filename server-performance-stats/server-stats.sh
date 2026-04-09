#!/bin/bash

echo "###################"
echo "#  Server Stats  #"
echo "###################"

uptime | cut -d ':' -f -2,3 | cut -d 'u' -f 1 | awk '{print "Time: " $1}'
echo
echo "###################"
echo "# CPU Usage Stats #"
echo "###################"

top -bn1 | grep '%Cpu(s)' | cut -d ',' -f 4 | awk '{print "CPU usage: " 100 - $1 "%"}'

echo
echo "######################"
echo "# Total memory Stats #"
echo "######################"

free | grep 'Mem:' | awk '{printf "Total: %.1fGi\nUsed: %.1fGi (%.2f%%)\nFree: %.1fGi (%.2f%%)\n",$2/1024^2, $3/1024^2, $3/$2 * 100, $4/1024^2, $4/$2 * 100}'

echo
echo "####################"
echo "# Disk Usage Stats #"
echo "####################"

df -h | grep "/" -w | awk '{printf "Total: %sG\nUsed: %s (%.2f%%)\nFree %s (%.2f%%)\n", $3 + $4, $3, $3/($3 + $4)*100,$4, $4/($3 + $4)*100}'

echo
echo "#####################"
echo "# Top 5 process CPU #"
echo "#####################"

ps aux --sort -%cpu | head -n 6 | awk '{print $1 "\t" $2 "\t" $4 "\t" $11}'

echo
echo "##############################"
echo "# Top 5 process Memory Usage #"
echo "##############################"

ps aux --sort -%mem | head -n 6 | awk '{print $1 "\t" $2 "\t" $4 "\t" $11}'

echo
echo "####################"
echo "# End of the Stats #"
echo "####################"
