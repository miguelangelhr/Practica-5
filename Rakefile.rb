task :default => :test

desc "Lanzamos ppt.rb con Test Unit"
task :test do
  sh "ruby -Ilib test/tc_ppt.rb"
end

desc "Limpieza de temporales"
task :limpiar do
  sh "rm -fr *.gz *~ *swp"
end

desc "Ejecuta bin/ppt_main.rb"
task :t, :test_name do [t, args]
	test_name = args[:test_name] || "test_play"
	sh "ruby -w -Ilib test/tc_ppt.rb --name #[test_name]"
end
