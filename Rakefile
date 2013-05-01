task :install do
  root = File.expand_path(File.dirname(__FILE__))

  puts 'Installing Bundles'
  system "vim -c BundleInstall! -c q -c q -u bundles.vim"

  puts 'Compile command-t extensions'
  system 'ruby -v'
  cmds = [
    "cd #{File.join(root, 'bundle', 'Command-T', 'ruby', 'command-t')}",
    "ruby extconf.rb",
    "make"
  ]

  system cmds.join(' && ')

  # puts 'Install additional snippets'

  cmds = [
    # "cd #{File.join(root, 'bundle', 'snipmate-snippets')}",
    # "rake deploy_local"
  ]

  system cmds.join(' && ')

  puts '*' * 79
  puts
  puts 'All done!'
  puts 'Be sure to checkout the helpful links in the README'
  puts 'Issues/Wiki: https://github.com/krisleech/vimfiles'
  puts
  puts '*' * 79
end

desc 'Update to latest and greatest'
task :update do
  system('git pull origin master') 
  puts 'Updating Bundles'
  system "vim -c BundleInstall! -c BundleClean! -c q -c q"

  puts '*' * 79
  puts
  puts 'Finished'
  puts
  puts '*' * 79
end

# namespace :snippets_dir do
#   task :find do
#     vim_dir = File.join(ENV['VIMFILES'] || ENV['HOME'] || ENV['USERPROFILE'], RUBY_PLATFORM =~ /mswin|msys|mingw32/ ? "vimfiles" : ".vim")
#     pathogen_dir = File.join(vim_dir, "bundle")
#     @snippets_dir = [File.join(pathogen_dir, 'snipmate', 'snippets'), File.join(pathogen_dir, 'snipmate.vim', 'snippets'), File.join(vim_dir, "snippets")].select do | folder |
#       File.exists? folder
#     end[0]
#   end
# 
#   desc "Purge the contents of the vim snippets directory"
#   task :purge => ["snippets_dir:find"] do
#     rm_rf @snippets_dir, :verbose => true if File.directory? @snippets_dir
#     mkdir @snippets_dir, :verbose => true
#   end
# end

# desc "Copy the snippets directories into ~/.vim/snippets"
# task :deploy_local => ["snippets_dir:purge"] do
#   Dir.foreach("./bundle/snipmate-snippets") do |f|
#     cp_r File.join("./bundle/snipmate-snippets", f), @snippets_dir, :verbose => true if File.directory?(f) && f =~ /^[^\.]/
#   end
#   # cp "support_functions.vim", @snippets_dir, :verbose => true
# end
