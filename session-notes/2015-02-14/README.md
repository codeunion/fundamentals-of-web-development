# Fundamentals of Web Development

**February 14, 2015**

## Craigslist Scraper

Stage 1: Create our data model & build a relational database to store CL info

Rough sketch of CL data model:
- MetroArea [cities]
- City/Suburb/District [sections]
- Section [categories]
- Category [filter]
- Posting [price, condition, make, model, description, title]

Main query: search for bikes by brand and price

model bike posting

```ruby
# Search for a bike by brand and price
bikes = Craiglist.bikes(brand: 'Santa Cruz', max_price: 400.00)
# => return an array of Craigslist::Posting objects

bikes.first.title == 'My Mountain Bike for Sale'
```
