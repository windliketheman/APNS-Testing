#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
reload(sys)
sys.setdefaultencoding('utf-8')

from apns import APNs, Payload
def send(listtoken,dev):
    if dev==1:
       print '--develop--'
       apns = APNs(use_sandbox=dev, cert_file='pem/cert.pem', key_file='pem/ck.pem')
    else:
       apns = APNs(use_sandbox=False, cert_file='pem/cert.pem', key_file='pem/key.pem')
       
    # attrs = ("alert", "badge", "sound", "custom")
    payload = Payload("You got your emails.", sound="default", badge=1, custom={"customdata":{"msgID":"51"}})
    
    for i in range(0, len(listtoken)):
        print i
        print listtoken[i]
        try:
           apns.gateway_server.send_notification(listtoken[i], payload)
        except Exception, e:
           print e            
           
