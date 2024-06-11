# Sample values
uint8 ENABLED=0
uint8 DISABLED=1
uint8 ERROR_CONDITION_A=2
uint8 ERROR_CONDITION_B=3

# Body part designator
string name

# Status byte implemented like Unix return codes:
# 0: All OK / Ready
# 1: Function disabled
# 2-100: Custom error codes indicating different stop conditions or
# malfunctions.
# 100-255: Custom readiness states. Some functionality still online / waiting
# for something.
#
uint8 status
