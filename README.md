# ghbuttons-rails

Github-style buttons for the Rails Asset Pipeline.

Inspired by and ripped out of css3-gitgub-buttons

http://nicolasgallagher.com/lab/css3-github-buttons/

# Usage:

 - include the stylesheet directly, or include it in your application.css with directives
 - use the generated css wisely.
 - use the mixins to make your own semantic css.

# TODO:

 - Finish sassification.  I'd like the colors to be variables you can override.
 - I'd like danger and positive to be created by a mixin you can use with your own
   colors, so you can have your own semantic classes for emphasis.
 - I want to make some more things mixins - 'big' is presentational, not declarative.
 - Making the 'button' a semantic mixin is going to be tough - the containers modify it,
   and it is huge, so it will be inefficient to spit out everything multiple times.
 - Since I wrote this I found the font-awesome project and released the font-awesome
   rails bundle at https://github.com/bokmann/font-awesome-rails.
   I'm considering removing all of the complexity in this ghbuttons project around the
   sprites, and just making those two gems work seamlessly together.
   
# License:

MIT license.