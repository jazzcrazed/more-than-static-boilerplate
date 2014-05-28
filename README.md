# (Slightly) More Than Static Boilerplate

I love the simplicity and speed of using
(Middleman)[http://middlemanapp.com] to generate static frontend pages,
but sometimes I need more dynamic routes.

This simply leverages Rack to point at Sinatra routes for more
dynamic-ness, and Middleman's build folder for the rest. Basically,
(this post)[http://blog.hull.io/post/45912703356/the-perfect-almost-static-site-setup]
by hull.io, stripped down to the bare minimum for easy boilerplating.

(Also, my templates are all in `haml`, for those of you expecting the
default `erb` templates.)
