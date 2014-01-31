# enumerable_hashify

[![Gem Version](https://badge.fury.io/rb/enumerable_hashify.png)](http://badge.fury.io/rb/enumerable_hashify)
[![Build Status](https://secure.travis-ci.org/ronen/enumerable_hashify.png)](http://travis-ci.org/ronen/enumerable_hashify)
[![Dependency Status](https://gemnasium.com/ronen/enumerable_hashify.png)](https://gemnasium.com/ronen/enumerable_hashify)

Defines Enumerable#hashify, which creates a hash with the enumerable's items
as keys and with a given constant value or with block-computed values:

    [1,2,3,4].hashify                --> {1=>true, 2=>true, 3=>true, 4=>true}
    [1,2,3,4].hashify("a")           --> {1=>"a", 2=>"a", 3=>"a", 4=>"a"}
    [1,2,3,4].hashify{|n| "a" * n}   --> {1=>"a", 2=>"aa", 3=>"aaa", 4=>"aaaa"}

# Installation

    gem install enumerable_hashify

or in your Gemfile

    gem "enumerable_hashify"

Enumerable#hashify is now also available in the
[facets](http://rubyworks.github.com/facets/) gem.

## Tested on

MRI 1.8.7, MRI 1.9.3, MRI 2.0.0

## Naming and Historical Note

I've been using this in my projects for years with the name Enumerable#to_h,
and figured it was time to make a gem since nobody else seems to have.

But there's been a bunch of discussion online as to what the proper semantics
that Enumerable#to_h should have, without universal agreement.  I recently
found a
[proposal](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/11195)
from back in 2001 that suggested this same functionality with the name
Enumerable#hashify which seemed pretty good to me.  I don't know why that
proposal wasn't adopted as part of ruby.  But here it is as a gem.

## Copyright

Released under the MIT License.  See LICENSE for details.
