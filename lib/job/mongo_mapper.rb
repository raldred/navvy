require 'rubygems'
require 'mongo_mapper'

module Navvy
  class Job
    include MongoMapper::Document

    key :object,    String
    key :method,    Symbol
    key :arguments, Array
    key :exception, String
    key :run_at,    Time
    key :failed_at, Time

    ##
    # Add a job to the job queue.
    #
    # @param [Object] object the object you want to run a method from
    # @param [Symbol, String] method the name of the method you want to run
    # @param [*] arguments optional arguments you want to pass to the method
    #
    # @return [true, false]

    def self.enqueue(object, method, *args)
      create(
        :object =>    object.name,
        :method =>    method.to_sym,
        :run_at =>    Time.now,
        :arguments => args
      )
    end

    ##
    # Find the next available job in the queue. This will not include failed
    # jobs (where :failed_at is not nil) and jobs that should run in the future
    # (where :run_at is greater than the current time).
    # 
    #
    # @return [Navvy::Job, nil] the next available job or nil if no jobs
    # were found

    def self.next
      first(
        :failed_at => nil,
        :run_at => {'$lte', Time.now}
      )
    end

    ##
    # Run the job. Will delete the Navvy::Job record and return its return
    # value if it runs successfully. If a job fails, it'll update the
    # Navvy::Job record to include the exception message it sent back and set
    # the :failed_at date. Failed jobs don't get deleted.
    #
    # @example
    #   job = Navvy::Job.next # finds the next available job in the queue
    #   job.run               # runs the job and returns the job's return value
    #
    # @return [String] return value of the called method

    def run
      begin
        result = object.constantize.send(method)
        destroy
        result
      rescue Exception => exception
        update_attributes({
          :exception => exception.message,
          :failed_at => Time.now
        })
      end
    end
  end
end