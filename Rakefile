require "rake"

task :default => :spec

desc "Uninstall"
task :uninstall do
  %w{admin console tunnel}.each do |plugin|
    sh "gem uninstall appfog-#{plugin}-vmc-plugin"
  end
  %w{appfog mcf manifests}.each do |plugin|
    sh "gem uninstall #{plugin}-vmc-plugin"
  end
end

desc "Run specs"
task :spec do
  %w{manifests mcf console tunnel}.each do |plugin|
    Dir.chdir(File.expand_path("../#{plugin}", __FILE__)) do
      sh("(gem list --local bundler | grep bundler || gem install bundler) && (bundle check || bundle install)")
      sh("bundle exec rspec")

      code = $1.to_i
      exit(code) if code != 0
    end
  end
end
