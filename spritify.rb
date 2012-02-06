puts "spritify"
basedir = "vector"

names = []
files = []
`mkdir #{basedir}/tmp`
Dir.new(basedir).entries.each do |file|
  if file.end_with?(".svg")
    names << file.gsub(/.svg/, '')
    output_file =  "#{basedir}/tmp/" + file.gsub(/.svg/, '.png')
    negate_file = " #{basedir}/tmp/" + file.gsub(/.svg/, '-negate.png')
    files << output_file
    files << negate_file
    `convert -background transparent -geometry 12x12 #{basedir}/#{file} #{output_file}`
    `convert -negate #{output_file} #{negate_file}`
  end
end

`montage -background transparent -tile 2x#{names.count} -geometry 12x12 #{files.join(" ")} app/assets/images/ghbuttons-sprite.png`

`rm -rf #{basedir}/tmp`

puts "make this your list of sprites in the .scss file:"
puts names.join(", ")