# Contemporary.css
<p><small>(a.k.a theCSS)</small></p>
<p><button onclick="toggleTheme();">Dark / light?</button></p>

## theDefaults

Basically this is a CSS stylesheet for use in web pages, web apps intended to blend in with [theShell](https://vicr123.com/theshell/) or [theDesk](https://vicr123.com/thedesk/) experience.

As this theme works on standard HTML elements, you can simply plop it in to any page. You don't need to fuel the &lt;div&gt;-hell, or any custom classes except for the `contemporary` class in the `<html>` tag to apply the style.

## theGrids

In case you miss working with grids and such, this also has presentational classes for rows and columns adapted from [Element.css](https://github.com/neocities/element).

To work with them, you make a bunch of divs with the "row" class, and fill it with a bunch of divs with the "col" class.

So much for not fueling the &lt;div&gt;-hell.

## theExamples

<div class="row">
<div class="col">
### Headings

<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>
</div>
<div class="col">
### Images

![Kitty](http://placekitten.com/200/300)

![Kitty](http://placekitten.com/100/300)

![Kitty](http://placekitten.com/700/300)

![Kitty](http://placekitten.com/900/200)

</div>
</div>
<div class="row">
<div class="col">
### Ordered List
1. Somebody once told me the
2. World was gonna roll me
3. I ain't the sharpest tool in
4. theShed
</div>
<div class="col">
### Unordered List
* We're no strangers to love
* You know the rules
* So do I
* A full commitment's what I'm thinking of
</div>
</div>
<div class="row">
<div class="col">
### Table
No. Xdate   Log
--- ------- ----------------------
1   177.150 Start project planning
2   177.151 Begin implementation
3   177.152 Binge on documentation
4   177.153 Stall
5   177.154 Quit

</div>
<div class="col">
### Code
```
#include <stdio.h>

int main(){
    int digit = 0;

    while(1){
        digit++;
        printf("Hello World %d\n", digit)
    }

    return 1; // if we're lucky, we might reach this point
}
```
</div>
</div>
### Forms
<form>
<fieldset>
  <legend>Widget Playground</legend>
  <div class="row">
  <div class="col">
  <input id="checkbox" type="checkbox"><label for="checkbox">Checkbox</label><br>
  <input id="checkboxd" type="checkbox" disabled><label for="checkboxd">Disabled checkbox</label><br>
  <input id="checkboxdc" type="checkbox" disabled checked><label for="checkboxdc">Disabled checked checkbox</label><br>
  </div>
  <div class="col">
  <input id="radio" type="radio"  name="group" ><label for="radio">Radio</label><br>
  <input id="radio2" type="radio" name="group" ><label for="radio2">Radio</label><br>
  <input id="radiod" type="radio" disabled><label for="radiod">Disabled radio</label><br>
  <input id="radiodc" type="radio" disabled checked><label for="radiodc">Disabled checked radio</label><br>
  </div>
  </div>
  <div class="row">
  <div class="col">
  <label for="text">PlainTextEdit</label><br>
  <input id="text" type="text"><br>
  <label for="text">TextArea</label><br>
  <textarea id="textarea" rows="5" cols="16"></textarea><br>
  <label for="word">Password?</label><br>
  <select id="word">
    <option>Supercalifragilisticexpialadocious</option>
    <option>Titin</option>
    <option>Fhqwhgads</option>
  </select><br>
  </div>
  <div class="col">
  <label for="range">Number:</label><br>
  <input type="range" id="range" min="0" max="10"><br>
  <label for="number">Another number:</label><br>
  <input type="number" id="number" min="0" max="10" value="0"><br>
  <label for="password">Actual password:</label><br>
  <input type="password" id="password"><br>
  <label for="time">Hammer time?</label><br>
  <input type="time" id="time"><br>
  <label for="search">Google?</label><br>
  <input type="search" id="search"><br>
  <label for="date">Date widget?</label><br>
  <input type="date" id="date"><br>
  <label for="file">Upload</label><br>
  <input type="file" id="file"><br>
  </div>
  </div>
 </fieldset>
  <input type="submit">
</form>


<script>
    function toggleTheme(){document.documentElement.classList.toggle("light");}
</script>