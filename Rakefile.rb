task :default => :test

desc "Lanzamos ppt.rb con Test Unit"
task :test do
  sh "ruby -Ilib test/tc_ppt.rb"
end

desc "Ejecuta ppt.rb con un test especifico"
task :t, :test_name do |t, args|
     test_name = args[:test_name] || "test_jugar"
     sh "ruby -w -Ilib test/tc_ppt.rb --name #{test_name}"
end

desc "Ejecuta el programa principal"
task :principal do
	sh "ruby -Ilib bin/ppt_main.rb"
end

desc "Limpieza de temporales"
task :limpiar do
  sh "rm -fr *.gz *~ *swp"
end

