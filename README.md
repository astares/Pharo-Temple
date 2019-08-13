# Pharo-Temple
A **minimalistic template engine** for [Pharo](http://www.pharo.org) written and maintained by T. Bergmann (Astares). 

# Quick Start
## Installation via Catalog

You can install Temple directly from the Pharo catalog.

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


