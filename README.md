# Meteor AutoForm N States

## What it is:

This package aims to handle _N-States_ buttons from an AutoForm handled input.

It all started when I tried to handle tri-states input checkboxes and came to nothing realiable. So I decided to tweak it by keeping the ```<input type="checkbox"/>``` and handling states somewhat manually...

So that everytime you click on that checkbox input, it states changes, and propagates something like a button with a different image in it.

It can handle more than 3 states now! :-)

## Example:

An example is worth a thousand words so let me show how I used it:

```coffee
'title.sort':
  type: Number
  optional: true
  autoform:
    type: 'tristate'
    afFieldInput:
      labelClass: 'btn btn-default'
      TristateIcons: [ 'fa fa-sort-alpha-desc', 'fa fa-sort', 'fa fa-sort-alpha-asc']
      TristateTitles: [ 'Click to remove sort', 'Click to sort ascending', 'Click to sort descending']
```

Well basically here it is, with a Bootstrap 3.0 button to nicely render a button on top of a checkbox and different states with titles to help with accessibility.

When you submit the form, you will get a state index returned hence the ```type: Number```.

In this example I use __keyup__ as input type method so everytime someone clicks on that simili button, it updates the sort order.

As far as I tested it works like a charm !

## What next ?

I did it really quick and probably dirty. If you have issues, or want to contribute, feel free to open a new ticket. PR are of course most welcomed !

## License

MIT
