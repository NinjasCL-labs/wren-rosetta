"""
Extract list of modules
"""
from pyquery import PyQuery
import requests

#url = "https://rosettacode.org/mw/index.php?title=Category:Wren&action=edit"
#content = requests.get(url).text
code = """
{{language|Wren
|exec=interpreted
|strength=strong
|safety=safe
|express=implicit
|checking=dynamic
|gc=yes
|site=http://wren.io/
}}{{language programming paradigm|Object-oriented}}

Wren is a lightweight, [[object-oriented]] [[programming language]] designed to be an easily-embeddable scripting language.

It is under development on [https://github.com/wren-lang/wren GitHub] and is fully documented [http://wren.io/ here].

Version 0.3.0 was released in June 2020 and the CLI tool (Wren CLI) was then split off into its own repository. It is now available as a pre-built standalone executable and is the main focus of examples written for RC. Unfortunately, its embedded VM suffers from a stack corruption bug which often manifests itself in recursive code. This bug was fixed in September 2020 and, rather than use the pre-built executable, I would recommend that RC users build Wren CLI themselves using the latest VM code pending the release of version 0.4.0.

In common with several other 'newer' languages (Rust, Kotlin, Julia, Swift, Phix etc.) Wren doesn't have its own syntax highlighting on Rosetta Code as GeSHi support hasn't been updated for a long time and may never be. However, I've found by experimentation that, if ''ecmascript'' is used in the ''lang'' tag, then this will highlight all of Wren's keywords except ''construct'' and ''foreign'' and is probably the best we can do in the circumstances.

As a language mainly designed for embedding, Wren's standard library is (of necessity) quite small and I have therefore decided to create some additional modules to assist with writing Rosetta Code tasks so the same code does not have to be written or copy/pasted time and time again thereby bloating a task's script code unnecessarily. The ones written so far are listed below:

* [https://rosettacode.org/wiki/Category:Wren-fmt fmt]
* [https://rosettacode.org/wiki/Category:Wren-str str]
* [https://rosettacode.org/wiki/Category:Wren-sort sort]
* [https://rosettacode.org/wiki/Category:Wren-math math]
* [https://rosettacode.org/wiki/Category:Wren-trait trait]
* [https://rosettacode.org/wiki/Category:Wren-seq seq]
* [https://rosettacode.org/wiki/Category:Wren-date date]
* [https://rosettacode.org/wiki/Category:Wren-rat rat]
* [https://rosettacode.org/wiki/Category:Wren-pattern pattern]
* [https://rosettacode.org/wiki/Category:Wren-big big]
* [https://rosettacode.org/wiki/Category:Wren-upc upc]
* [https://rosettacode.org/wiki/Category:Wren-matrix matrix]
* [https://rosettacode.org/wiki/Category:Wren-set set]
* [https://rosettacode.org/wiki/Category:Wren-llist llist]
* [https://rosettacode.org/wiki/Category:Wren-queue queue]
* [https://rosettacode.org/wiki/Category:Wren-complex complex]
<br>
These modules are subject to the same license as any other code submitted to Rosetta Code though contributors' user pages should be checked to see whether more permissive terms are available. If anyone wishes to add further modules, please do so using a similar model and append them to the list.

Please note that when creating a category for a new module its name should be prefixed with 'Wren-' as in 'Wren-fmt' and the library header for a task which uses the module should therefore use this name. Modules will normally have generic names and this convention allows Rosetta Code users to easily distinguish Wren modules from similarly named modules/libraries written for other languages.
"""

#pq = PyQuery(content)
#code = pq("#wpTextbox1").html()

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
