[:test_units, :test_functional, :recent].each do |name|
  Rake::Task[name].prerequisite.clear
end
