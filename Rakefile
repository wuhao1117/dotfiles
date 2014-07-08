require 'rake'

INSTALL_DIR = "#{ENV["HOME"]}"
BACKUP_DIR = "#{INSTALL_DIR}/.dotfile_backup"

task :install do

    # Create new backup folder
    if File.exists?("#{BACKUP_DIR}")
        `rm -fr "#{BACKUP_DIR}"`
    end
    `mkdir -p "#{BACKUP_DIR}"`

    # Install .vim
    if File.exists?("#{INSTALL_DIR}/.vim/")
        `mv "#{INSTALL_DIR}/.vim/" "#{BACKUP_DIR}/.vim/"`
    end
    `cp -r "$PWD/vim/" "#{INSTALL_DIR}/.vim"`

    # Install tmux-profiles
    if File.exists?("#{INSTALL_DIR}/tmux-profile/")
        `mv "#{INSTALL_DIR}/tmux-profile/" "#{BACKUP_DIR}/.tmux-profile/"`
    end
    `cp -r "$PWD/tmux-profile/" "#{INSTALL_DIR}/tmux-profile/"`

    # Install other files
    linkables = Dir.glob('**{.d}')
    linkables.each do |linkable|
        file = linkable.split('/').last.split('.d').last
        target = "#{INSTALL_DIR}/.#{file}"

        if File.exists?("#{INSTALL_DIR}/.#{file}")
            `mv "#{INSTALL_DIR}/.#{file}" "#{BACKUP_DIR}/.#{file}"`
        end
        `mv "$PWD/#{linkable}" "#{target}"`
    end

    lines = IO.readlines("#{INSTALL_DIR}/.gitconfig").map do |line|
        if line.include? "name ="
            print "git username: "
            line = "\tname = #{STDIN.gets.chomp()}"
        elsif line.include? "email ="
            print "git email: "
            line = "\temail = #{STDIN.gets.chomp()}"
        else
            line
        end
    end

    File.open("#{INSTALL_DIR}/.gitconfig", "w") do |file|
        file.puts lines
    end

end

task :default => 'install'
