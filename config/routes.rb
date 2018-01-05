Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create]
end
#
# To log that a specific guest appeared on a certain episode, we'll need to store some additional data.
# Make the necessary updates to the schema so that a guest can appear on many episodes, as well as an episode
# having multiple guests. The appearance should also have a way to store the guest's rating for that episode in
# the range of 1 to 5.
#
# As a user, I should be able to fill out a form to create a new appearance. I should be able to choose
# an existing guest, an existing episode, and add a rating. Upon successfully creating an appearance, I should
# be redirected to the selected episode's show page.
#
# On the guests index page, clicking on a guest's name should take us to a detail view about each guest.
# This View should include the guest's name and occupation.
#
# As a user, I should be able to view all of the guests for a particular episode. This means that we'll need
# an episode's show page that lists out all of the guests who were on that episode.
