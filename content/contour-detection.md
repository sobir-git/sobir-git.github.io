title: Contour detection
date: 30 apr 2021
author: Sobir

_Dictionary definition: an outline representing or bounding the shape or form of something._

Separate bright object from dark background. Contours are polygons. Contours are the boundaries of
objects with the same intensity. 

From OpenCV:
> Contours is a Python list of all the contours in the image. Each individual contour is a Numpy array of (x,y) coordinates of boundary points of the object.

In OpenCV, for efficiency purposes, the contours can be _appoximated_. Without approximation, it
can return too many boundary points. With approximation, they can be reduced to much smaller number (e.g say 4 points for a rectangular object).

Contours detected in an image form a _hierarchy_. One can contain the other, and so on. Remember _contour maps_ from math. However black and white images produce only disjoint contours[I think so].

