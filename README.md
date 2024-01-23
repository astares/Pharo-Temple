# Pharo-Temple
A **minimalistic template engine** for [Pharo](http://www.pharo.org) written and maintained by astares. 

[![Unit Tests](https://github.com/astares/Pharo-Temple/actions/workflows/build.yml/badge.svg)](https://github.com/astares/Pharo-Temple/actions/workflows/build.yml)
[![Coverage Status](https://codecov.io/github/astares/Pharo-Temple/coverage.svg?branch=main)](https://codecov.io/gh/astares/Pharo-Temple/branch/main)

[![Astares](https://img.shields.io/badge/astares.com-white?style=flat&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMzMiIGhlaWdodD0iMjg5IiBvdmVyZmxvdz0iaGlkZGVuIiB4bWxuczp2PSJodHRwczovL3ZlY3RhLmlvL25hbm8iPjxkZWZzPjxjbGlwUGF0aCBpZD0iQSI+PHBhdGggZD0iTTYzIDM0aDMzM3YyODlINjN6Ii8+PC9jbGlwUGF0aD48L2RlZnM+PGcgY2xpcC1wYXRoPSJ1cmwoI0EpIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjMgLTM0KSI+PHBhdGggZD0iTTIyNS44MyAzMy45OTdoMGwxNzAuMjQgMjg4Ljc0Ni0zMzMuMDcuMjMxeiIgZmlsbD0iI2ZmZiIvPjxnIGZpbGw9IiM2OWYiPjxwYXRoIGQ9Ik0yMjEuNTEgNTIuNzg0aDB2MjEyLjM5NEw3My4wOCAzMTUuNzU0eiIvPjxwYXRoIGQ9Ik0yMjEuNTEgNTIuNzg0aDB2MjEyLjM5NEw3My4wOCAzMTUuNzU0eiIvPjwvZz48cGF0aCBkPSJNMjI3LjI3IDI3Mi40MDdoMGwxNDkuODcgNDQuNzkxSDg0LjYxeiIgZmlsbD0iIzM2YyIvPjxwYXRoIGQ9Ik0yMzAuMTYgNTIuNzg0aDBsMTU0LjE4IDI2MC4wODItMTUxLjMtNDcuNjg4eiIgZmlsbD0iIzE5YWVmZiIvPjwvZz48L3N2Zz4=)](https://www.astares.com)

[![Pharo 8](https://img.shields.io/badge/Pharo-8.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 9](https://img.shields.io/badge/Pharo-9.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 10](https://img.shields.io/badge/Pharo-10-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 11](https://img.shields.io/badge/Pharo-11-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 12](https://img.shields.io/badge/Pharo-12-%23aac9ff.svg)](https://pharo.org/download)

# Quick Start
 
## Installation via Script

```Smalltalk
Metacello new 
	repository: 'github://astares/Pharo-Temple/src';
	baseline: 'Temple';
	load
```

## LICENSE
[MIT License](LICENSE)

# Usage

When installed you can send the message #resolveTemplate to a String to get the output of your string template.

```Smalltalk
'Hello World' resolveTemplate  
```
returns a 'Hello World' string.

The String can contain Pharo expressions surrounded by curly braces 

```
{ yourexpression }
```
The expressions are evaluated to get included into the output.

```Smalltalk
'Hello {#dlroW reverse}' resolveTemplate  
```
will also return "Hello World".

As curly braces are used as markers their use is predefined within templates. If you need them nonetheless within your **template text** you can escape them using \{ and \} easily. 

# Examples
## Templates with Pharo expressions

```Smalltalk
'An expression: { Object name }' resolveTemplate 
```
returns **'An expression: Object'**

```Smalltalk
'Ultimative answer: { 40 + 2 }' resolveTemplate
```
returns **'Ultimative answer: 42'**

## Templates with escaping

```Smalltalk
'Use braces like \{\} to escape' resolveTemplate
```
returns **'Use braces like {} to escape'**


