require 'rake'

desc "Hook our dotfiles into system-standard positions."
task :install do

  `mkdir -p "$HOME/.dotfile_backup/"`

  if !File.exists?("$HOME/.vim/")
    `cp -r "$HOME/.vim/" "$HOME/.dotfile_backup/.vim/"`
  end  

  `cp -r "$PWD/vim/" "$HOME/.vim"`
  
  linkables = Dir.glob('**{.symlink}')
  linkables.each do |linkable|
    file = linkable.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{file}"

    if !File.exists?("$HOME/.#{file}")
      `mv "$HOME/.#{file}" "$HOME/.dotfile_backup/.#{file}"`
    end
    `mv "$PWD/#{linkable}" "#{target}"`
  end
end

task :default => 'install'