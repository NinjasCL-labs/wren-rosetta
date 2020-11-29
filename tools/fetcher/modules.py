"""
Extract list of modules
"""
from pyquery import PyQuery
import requests

url = "https://rosettacode.org/mw/index.php?title=Category:Wren&action=edit"
content = requests.get(url).text

pq = PyQuery(content)
code = pq("#wpTextbox1").html()

start = code.find("* [https://rosettacode.org/wiki/Category:Wren-")
end = code.find("""<br>
These modules are subject to the same license""")

items = code[start:end].strip().split("\n")

# Section exception
sections = {
  "Wren-pattern": 2,
  "Wren-big": 2,
  "Wren-upc": "https://gist.githubusercontent.com/PureFox48/00fad9b48a0b80445d622a1ef18e4285/raw/5536b1d86a762ec8294a4e06111dd4749ba796b3/Wren-upc.md",
  "Wren-llist": 2,
  "Wren-queue": 2,
  "Wren-complex": 2
}

modules = []
for item in items:
  start = item.find("[") + 1
  end = item.find("]")
  module = item[start:end].split(" ")

  start = item.find("Category:") + len("Category:")
  end = item.find("]")
  name = item[start:end].split(" ")[0]

  module.append(name)

  section = 1
  if name in sections.keys():
    section = sections[name]

  if str(section).isnumeric():
    module.append(f"https://rosettacode.org/mw/index.php?title=Category_talk:{name}&action=edit&section={section}")
  else:
    module.append(section)

  modules.append(module)

with open("modules.makefile", "w") as f:
  phony = []
  for module in modules:
    url, name, uid, page = module
    phony.append(name.strip())

  out = "PHONY: "
  for name in phony:
    out += name + " "

  f.write(out.strip())

  for module in modules:
    url, name, uid, page = module
    f.write(f"\n{name}:\n")
    f.write(f"""\tpython3 fetch.py "{url}" "{name}" "{uid}" "{page}"\n""")

  f.close()
