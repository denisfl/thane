[Справка на русском](https://github.com/denisfl/thane/wiki/%D0%A1%D0%BF%D1%80%D0%B0%D0%B2%D0%BA%D0%B0-%D0%BD%D0%B0-%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC)

###Introduction to Thane, a Middleman template.

> Pudding — Alice: Alice — Pudding.

> *Through the Looking Glass, Lewis Carroll*

Thane — is a [Middleman](http://middlemanapp.com) template, based on [HTML5 Boilerplate](http://html5boilerplate.com). It also contains some [Bootstrap](htp://getbootstrap.com) styles.

Thane is intended as a fast and easy way to initiate the process of web-development . 

The project uses a rails-like assets pipeline:

    assets/stylesheets 
    assets/javascripts 
    assets/images

If you are using Middleman for layout design and prototyping, and are planning to move your project to Ruby on Rails, all you will need to do is copy the assets folder.

*In order to prevent any problems while moving the project it is important to remember to use image-url('') for your CSS stylesheets: 
`background: image-url('image_name.jpg')`.*

###Hot to start:

  - install [middlemanapp.com](http://middlemanapp.com)
  - open the console
  - run: `git clone https://github.com/denisfl/thane.git projet_name` 
  - `cd projet_name`
  - install gems: `bundle install`
  - start middleman: `middleman server`
  - now you can begin :)

###Some settings

Using the *data/site.yml* file you can set the language, headline, description and keywords. In the `google_analytics_id` field you can specify ID Google Analytics, and  the appropriate code will be automatically added to *layout.slim*.

Using the *data/sitemap.yml* you can make a list of all pages. A list of all pages is usually a handy thing to have in layout design and prototyping.
