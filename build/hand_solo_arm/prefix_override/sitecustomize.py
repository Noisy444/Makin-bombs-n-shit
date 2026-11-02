import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/workspace/irs_ws/src/Makin-bombs-n-shit/install/hand_solo_arm'
