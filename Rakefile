require 'parallel_tests'

  puts "\n++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
  puts "++++++++++++++++++ Running tests in Parallel ++++++++++++++++++"
  puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n"

desc "Execute a single spec or all specs (in parallel) inside spec/** folder"
task :default, [:spec_file] do |t, args|
  if args.spec_file
    spec_file = args.spec_file
  else
    spec_file = "all"
  end

  unless spec_file == "all"
    %x[bundle exec rspec spec/#{spec_file}.rb]
  else
    ParallelTests::CLI.new.run(["--type", "rspec"] + ["-n","5"] + Dir["spec/**/*.rb"])
  end
end
