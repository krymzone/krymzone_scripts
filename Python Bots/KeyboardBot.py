from pyautogui import *
import pyautogui
import time
import keyboard
import random
import win32api
import win32con

# Define key codes for keyboard keys
KEYS = {
    (0, 0, 0): {        # RGB values
        'right': 0x27,  # Right arrow key code
        'down': 0x28,   # Down arrow key code
        'up': 0x26,     # Up arrow key code
        'left': 0x25    # Left arrow key code
    },
}

# Function to press a keyboard key
def press_key(key):
    win32api.keybd_event(key, 0, 0, 0)
    time.sleep(0.1)
    win32api.keybd_event(key, 0, win32con.KEYEVENTF_KEYUP, 0)

# Define pixel positions
pixel_positions = {
    'right': (x, y), 
    'down': (x, y),
    'up': (x, y),
    'left': (x, y)
}

# Define color tolerances (offsets)
color_tolerance = 30

while not keyboard.is_pressed('q'):
    for direction, position in pixel_positions.items():
        pixel_color = pyautogui.pixel(*position)
        for defined_color, keys in KEYS.items():
            if all(abs(pixel_color[i] - defined_color[i]) <= color_tolerance for i in range(3)):
                key_press = keys.get(direction)
                if key_press:
                    press_key(key_press)
