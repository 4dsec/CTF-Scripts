This challenge had a *weak password* set to an *Administrator account*. All i had to do was **bruteforce the login API** and then retrieve the JWT token from the response.

So i wrote a bash quickie instead of using Burp Intruder as intruder can get really slow for bigger wordlists due to time throttling.
