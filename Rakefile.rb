task :default => :test

desc "Run bin/ppt main.rb"
task :t, :test_name do [t, args]
	test_name = args[:test_name] || "test_play"
	sh "ruby -w -Ilib test/tc_ppt.rb --name #[test_name]"
end
