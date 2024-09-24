#!/bin/bash

#DROP

iptables -P INPUT DROP

iptables -P OUTPUT DROP

iptables -P FORWARD DROP

#ICMP

iptables -A INPUT -p icmp -j ACCEPT

iptables -A OUTPUT -p icmp -j ACCEPT

iptables -A FORWARD -p icmp -j ACCEPT

#DNS

iptables -A INPUT -p udp --sport 53 -j ACCEPT

iptables -A INPUT -p udp --dport 53 -j ACCEPT

iptables -A OUTPUT -p udp --dport 53 -j ACCEPT

iptables -A OUTPUT -p udp --sport 53 -j ACCEPT

iptables -A FORWARD -p udp --sport 53 -j ACCEPT

iptables -A FORWARD -p udp --dport 53 -j ACCEPT

#http

iptables -A INPUT -p tcp -m tcp --sport 80 -j ACCEPT

iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT

iptables -A OUTPUT -p tcp -m tcp --sport 80 -j ACCEPT

iptables -A OUTPUT -p tcp -m tcp --dport 80 -j ACCEPT

iptables -A FORWARD -p tcp -m tcp --sport 80 -j ACCEPT

iptables -A FORWARD -p tcp -m tcp --dport 80 -j ACCEPT

#https
iptables -A INPUT -p tcp -m tcp --sport 443 -j ACCEPT

iptables -A INPUT -p tcp -m tcp --dport 443 -j ACCEPT

iptables -A OUTPUT -p tcp -m tcp --sport 443 -j ACCEPT

iptables -A OUTPUT -p tcp -m tcp --dport 443 -j ACCEPT

iptables -A FORWARD -p tcp -m tcp --sport 443 -j ACCEPT

iptables -A FORWARD -p tcp -m tcp --dport 443 -j ACCEPT

#ssh
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

iptables -A INPUT -p tcp --sport 22 -j ACCEPT

iptables -A OUTPUT -p tcp --dport 22 -j ACCEPT

iptables -A OUTPUT -p tcp --sport 22 -j ACCEPT

iptables -A FORWARD -p tcp --dport 22 -j ACCEPT

iptables -A FORWARD -p tcp --sport 22 -j ACCEPT
