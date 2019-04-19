# Nested Resources + Namespaces

## Building nested routes
    To better organize our content
    To protect against typos    

### What you did in Node
    Using multiple routers, you can achieve an equivalent of nesting, but you need to make it by hand most of the time.

### The Rails way
    We start by generating our models + controllers, then in routes.rb, we can nest resources together. Rails is way faster at generating those than a lot of languages

    2 commands to generate your models + controllers
    1 edit to modify your routes and that's it !

#### Setup the routes

    Before setting up the routes, the resources should already being created. Once they are, you can either use basic routes, resources and nested resources, the nested resources at their most basic expression use this kind of structure :

    ```
    resources :author do
        resources :book
    end
   ```

#### Applying the logic
    We need to remember that we still need to define our logic that we want to use, the routes exist, but in the case at the previous example, accessing /author/:id/books will show all the books by default, we need to specify the usage of our wildcard.

## Building namespaces

    Namespaced routes will look the same as nested routes on surface, but they are very different. Using namespaces enables us to use a different controller based on the context of the namespace. In case of an admin one we would have :

    ```
        namespace :admin do
        resources :users
        end
    ```

    We can specify which actions we want available in the admin

    ```
        namespace :admin do
        resources :users, only: [:destroy, :edit]
        end
    ```
    Remember that using namespaces will take into account a new controller, in that case admin/users_controller.rb


#### Small Rails project to play with namespaces + ested resources

https://gist.github.com/jamesnvc/8632485c114374b7f6e7a2e72fc7b470