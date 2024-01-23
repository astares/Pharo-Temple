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

## Templates with predefined bindings

If you already have some objects bound by name you can give them easily in a dictionary: 

```Smalltalk
| bindings |
bindings := { #foo -> False superclass. } asDictionary.
'Superclass of False is { foo }' resolveTemplateUsingBindings: bindings
```
returns **'Superclass of False is Boolean'**
