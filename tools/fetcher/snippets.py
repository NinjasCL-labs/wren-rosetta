"""
Extract list of snippets
"""

from pyquery import PyQuery
import requests
import json
from hashlib import sha256


# Fetch from Website
rosetta = "https://rosettacode.org"
url = rosetta + "/wiki/Category:Wren"

content = requests.get(url).text

pq = PyQuery(content)
pages = []
pq("#mw-pages").find("a").each(lambda _, element: pages.append(PyQuery(element)))

snippets = []
for index, page in enumerate(pages):
  snippet = []

  href = page.attr("href")
  url = f"{rosetta}{href}#Wren"
  snippet.append(url)

  name = href[len("/wiki/"):].lower()
  snippet.append(name)
  
  uid = page.text()
  snippet.append(uid)

  content = requests.get(url).text
  pq = PyQuery(content)
  edit = rosetta + pq("#Wren").next("span").find("a").attr("href")
  snippet.append(edit)

  print(index, "Added", snippet)
  snippets.append(snippet)

# Read from logs if needed
# content = open("snippets.log", "r").read().split("\n")
# import re

# snippets = []
# for line in content:
#   start = line.find("[") + 1
#   end = line.find("]")
#   data = line[start:end]
#   snippet = re.split(r"\'([\s\S]+)\',\s\'([\s\S]+)\',\s\'([\s\S]+)\',\s\'([\s\S]+)\'", data)
#   snippet = snippet[1:len(snippet) - 1]

#   if len(snippet) > 1:
#     snippets.append(snippet)


with open("snippets.makefile", "w") as f:
  phony = []
  for snippet in snippets:
    url, name, uid, page = snippet
    phony.append(name.strip())
  
  out = "PHONY: "
  for name in phony:
    checksum = sha256(name.encode()).hexdigest()
    out += "fetch_" + checksum + " "

  f.write(out.strip())

  for snippet in snippets:
    url, name, uid, page = snippet
    checksum = sha256(name.encode()).hexdigest()
    name = name.replace(",", "").replace("(", "").replace(")", "").replace(".","").replace("/", "_").replace("%2", "").replace("%27", "").replace(" ", "_").replace("-", "_").replace("%", "").replace("'", "").replace("\"", "").lower()
    f.write(f"\nfetch_{checksum}:\n")
    f.write(f"""\tpython3 fetch.py "{url}" "{name}" "{uid}" "{page}"\n""")
  
  f.close()

