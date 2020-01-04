# Rake file 

require 'rake'
require 'fileutils'
#require File.join(File.dirname(__FILE__), 'bin')

desc "Instalar Vim y Plugins"
task :install_vim do
  puts "============================="
  puts "Instalando plugins de vim."
  puts "============================="
  run %{
    rm -rf ~/.vim
    rm -rf ~/.vimrc
    ln -s ~/.lnrfiles/vim ~/.vim
    ln -s ~/.lnrfiles/vimrc.before ~/.vimrc 
    vim +PlugInstall +qall
    rm -f ~/.vimrc
    ln -s ~/.lnrfiles/vimrc ~/.vimrc 
  }

  puts

end


desc "Instalar Dependecias"
task :install_dependences do
  puts "============================="
  puts "Instalando dependecias."
  puts "============================="
  
  run %{sudo apt-get install -y vim wget curl git tmux} if RUBY_PLATFORM.downcase.include?("linux")

  puts
end


desc "update using for only update to master"
task :update do   
  puts "============================="
  puts "Actualizando repositorio"
  puts "============================="

  run %(git pull origin master)

  puts 
end

desc "upgrade"
task :upgrade do   
  puts "============================="
  puts "Actualizando repositorio"
  puts "============================="

  Rake::Task["install"].execute

  puts 
end


desc "Install"
task :install do
  Rake::Task["install_dependences"].execute
  Rake::Task["install_vim"].execute
  
  complete_install_banner
end


task :default => 'install'

private
def run(cmd)
  puts "[Running] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end


def complete_install_banner
  puts "Instalacion completa"
  puts "     ██╗     ███╗   ██╗██████╗ ███████╗██╗██╗     ███████╗███████╗"
  puts "     ██║     ████╗  ██║██╔══██╗██╔════╝██║██║     ██╔════╝██╔════╝"
  puts "     ██║     ██╔██╗ ██║██████╔╝█████╗  ██║██║     █████╗  ███████╗"
  puts "     ██║     ██║╚██╗██║██╔══██╗██╔══╝  ██║██║     ██╔══╝  ╚════██║"
  puts "     ███████╗██║ ╚████║██║  ██║██║     ██║███████╗███████╗███████║"
  puts " dot ╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝"
end
