#### Food Finder ####
#
# Launch this ruby file from the command line
# to get started.
#

APP_ROOT = File.dirname(__FILE__)

require File.join(APP_ROOT, 'lib', 'guide')

guide = Guide.new('restaurants.txt')
guide.launch!
