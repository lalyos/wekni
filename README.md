tired of figuring out kubectl commandline params, specially digging out deep json values? 
this project gives you a single page webapp to control kubectl.

There are sub projects:
- invoke kubectl from a webapp : cgi-bin
- visually select part of a json
- use kubectl's own jsonpath implemetation in the browser

## kubectl as cgi-bin

the easiest cgi-bin server is busybox's httpd which is only in busybox-extension pkg.

## jsonpath explorer

lets create a simple html page, which displays a json object structure (accordion style for details)
and by doubleclicking a leaf (simple json value like string/number) it displays the jsonPath expression

## jsonpath executor - wasm

jsonpath implementations are quite different from eachoother. Kubectl uses its own version
(https://github.com/kubernetes/client-go/tree/master/util/jsonpath). Its written in go,
so one way to invoke it from a js function running in a browser is to use wasm.

---

The project name comes from (WEb KuberNetes Interface) and its the old hungarian expression for bread.
