require_relative "../lib/student.rb"

namespace :db do

   

    Student.create(name: "Melissa", grade: "10th")
    Student.create(name: "April", grade: "10th")
    Student.create(name: "Luke", grade: "9th")
    Student.create(name: "Devon", grade: "11th")
    Student.create(name: "Sarah", grade: "10th")

    desc 'seed the database with some dummy data'
    task :seed do
        require_relative './db/seeds.rb'
    end

    desc 'drop into the Pry console'
    task :console => :environment do
        Pry.start
    end
end


