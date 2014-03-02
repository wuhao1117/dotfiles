require 'rake'

INSTALL_DIR = "#{ENV["HOME"]}"
BACKUP_DIR = "#{INSTALL_DIR}/.dotfile_backup"

task :install do

  `mkdir -p "#{BACKUP_DIR}"`

  if File.exists?("#{INSTALL_DIR}/.vim/")
    `cp -r "#{INSTALL_DIR}/.vim/" "#{BACKUP_DIR}/.vim/"`
  end

  if File.exists?("#{INSTALL_DIR}/tmux-profile/")
    `cp -r "#{INSTALL_DIR}/tmux-profile/" "#{BACKUP_DIR}/.tmux-profile/"`
  end

  `cp -r "$PWD/vim/" "#{INSTALL_DIR}/.vim"`
  `cp -r "$PWD/tmux-profile" "#{INSTALL_DIR}/tmux-profile"`

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
