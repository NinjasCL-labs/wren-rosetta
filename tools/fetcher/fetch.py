from pyquery import PyQuery
import requests
import sys

def write(name, content):
  name = name = name.replace(",", "").replace("(", "").replace(")", "").replace(".","").replace("/", "_").replace("%2", "").replace("%27", "").replace(" ", "_").replace("-", "_").replace("%", "").replace("'", "").replace("\"", "").lower()
  with open(f"files/{name}.wren", "w") as f:
    f.write(content)
    f.close()

url = sys.argv[1]
name = sys.argv[2]
module = sys.argv[3]
source = sys.argv[4]

content = requests.get(source).text
pq = PyQuery(content)

code = pq("#wpTextbox1").html()

contents = []

if code:
  pq = PyQuery(code)
  pq.find("lang").each(lambda _, element: contents.append(PyQuery(element).html()))

if not code:
  start = content.find("```javascript") + len("```javascript")
  end = content.find("```", len("```"))
  code = content[start:end]
  contents.append(code)

for index, snippet in enumerate(contents):
  filename = name
  if index > 0:
    filename = f"{name}-{index}"

  code = f"""// url: {url}
// source: {source}
// file: {filename}
// name: {module}
// author: PureFox
// license: MIT

{snippet}
"""

  write(filename, code)
