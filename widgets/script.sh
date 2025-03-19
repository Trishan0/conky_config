#!/bin/bash
# Kill existing Conky instances
killall conky

# Launch Conky widgets
conky -c /home/trishan/Documents/widgets/conkyrc_time &
conky -c /home/trishan/Documents/widgets/Hermoso_Rc &
