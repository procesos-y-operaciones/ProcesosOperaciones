# Performance Evaluation

* Dependencies
  * Ruby 2.4
  * Docker
  * Docker-compose

* Build & Run
  * Production Environment
    * Run the command shell: 
      * `docker-compose build`
      * `docker-compose up`
      * `docker exec -it pyo_ms /bin/bash`
      * `rails db:migrate`
      * `rails db:seed`
  * Development Environment
    * Run the command shell: 
      * `rails s`
