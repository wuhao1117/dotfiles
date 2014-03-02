require 'rake'

INSTALL_DIR = "#{ENV["HOME"]}"
BACKUP_DIR = "#{INSTALL_DIR}/.dotfile_backup"

task :install do

  # create new backup folder
  if File.exists?("#{BACKUP_DIR}")
    `rm -fr "#{BACKUP_DIR}"`
  end
  `mkdir -p "#{BACKUP_DIR}"`

  # install .vim
  if File.exists?("#{INSTALL_DIR}/.vim/")
    `mv "#{INSTALL_DIR}/.vim/" "#{BACKUP_DIR}/.vim/"`
  end
  `cp -r "$PWD/vim/" "#{INSTALL_DIR}/.vim"`

  # install tmux-profiles
  if File.exists?("#{INSTALL_DIR}/tmux-profile/")
    `mv "#{INSTALL_DIR}/tmux-profile/" "#{BACKUP_DIR}/.tmux-profile/"`
  end
  `cp -r "$PWD/tmux-profile/" "#{INSTALL_DIR}/tmux-profile/"`

  # install other files
  linkables = Dir.glob('**{.symlink}')
  linkables.each do |linkable|
    file = linkable.split('/').last.split('.symlink').last
    target = "#{INSTALL_DIR}/.#{file}"

    if File.exists?("#{INSTALL_DIR}/.#{file}")
      `mv "#{INSTALL_DIR}/.#{file}" "#{BACKUP_DIR}/.#{file}"`
    end
    `mv "$PWD/#{linkable}" "#{target}"`
  end
end

task :default => 'install'
