This repo demonstrates using turbo-rails and view components together in a turbo stream model broadcast. The code in this repo is intended to accompany the tutorial originally [published on my blog](https://www.colby.so/posts/rendering-view-components-with-turbo-stream-broadcasts).

To follow along with the tutorial, work from the main branch.

The final, working implementation lives in the broadcast-spies branch.
## Project setup

After cloning this repo:
```
bundle install
rails db:create && db:migrate
```
Start the server with `rails s`

After setup, visit http://localhost:3000/spies to get started.
