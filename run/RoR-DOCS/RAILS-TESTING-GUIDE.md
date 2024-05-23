
# [Testing Rails Applications](https://guides.rubyonrails.org/testing.html)

```
cd <RAILS_PROJECT_HOME>

rails generate test_unit:scaffold category

rails generate integration_test create_category
rails generate integration_test list_categories

rails test                                                  # run all tests
rails test test/controllers                                 # run just controller tests

# run specific controller tests
rails test test/controllers/categories_controller_test.rb   




```