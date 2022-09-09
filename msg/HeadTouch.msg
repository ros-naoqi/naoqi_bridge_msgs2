# A message for Nao's tactile interface (toucht buttons on the head)

uint8 button            # which of the three segments is touched
uint8 state             # pressed or released, see below

uint8 BUTTON_FRONT=1
uint8 BUTTON_MIDDLE=2
uint8 BUTTON_REAR=3

uint8 STATE_RELEASED=0
uint8 STATE_PRESSED=1
