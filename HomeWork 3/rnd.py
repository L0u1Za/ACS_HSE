import random
import string

def Random():
    return random.randint(0, 27)

def randName():
    letters = string.ascii_letters
    return (''.join(random.choice(letters) for i in range(20)))