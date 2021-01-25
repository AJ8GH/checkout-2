# Supermarket Checkout

[![Maintainability](https://api.codeclimate.com/v1/badges/f783645d1024f7aa51e7/maintainability)](https://codeclimate.com/github/AJ8GH/object-mart/maintainability) [![Build Status](https://travis-ci.com/AJ8GH/object-mart.svg?branch=master)](https://travis-ci.com/AJ8GH/object-mart) [![Coverage Status](https://coveralls.io/repos/github/AJ8GH/object-mart/badge.svg?branch=master)](https://coveralls.io/github/AJ8GH/object-mart?branch=master)

![supermarket shelves](https://miro.medium.com/max/7914/0*4-7evG246NzzlVQt)

## Objectives

 - Build a functional program for a supermarket checkout system
 - Apply the principles of Object Oriented Programming
 - Apply strict Test Driven Development

## Getting started

Clone repo:
- `git clone git@github.com:AJ8GH/object-mart.git`

Run object_mart script:
- `cd object-mart`
- `irb`
- `require_relative 'object_mart.rb'`

Instantiate a Shopper:
- `name = Shopper.new`

Browse the items for sale:
- `name.store.price_list`

Pick items:
- `name.pick 'milk'`
- `name.pick 'tomatoes'`
- `name.pick 'salmon'`

Checkout:
- `checkout = name.checkout`

Scan your items:
- `checkout.scan 'milk'`
- `checkout.scan 'salmon'`

Check your total price:
- `checkout.total_price`

### *Thankyou for shopping at Object Mart!*

## Testing
- `rspec`
- `rake`

## Dependencies
- `ruby`
- `rspec`
- `coveralls`
