require 'pry'

def reformat_languages(languages)
  output = {}
  styles = []
  languages.each do |style, languages_hsh|
    languages_hsh.each do |language, type_hsh|
      output[language] = {}
      styles.push(style)
      type_hsh.each do |type_key, type|
        output[language][:type] = type
      end
    end
    output[language][:style] = styles
  end
  binding.pry
  output
end

# let(:languages_by_style) {
#   {
#     :oo => {
#       :ruby => {
#         :type => "interpreted"
#       },
#       :javascript => {
#         :type => "interpreted"
#       },
#       :python => {
#         :type => "interpreted"
#       },
#       :java => {
#         :type => "compiled"
#       }
#     },
#     :functional => {
#       :clojure => {
#         :type => "compiled"
#       },
#       :erlang => {
#         :type => "compiled"
#       },
#       :scala => {
#         :type => "compiled"
#       },
#       :javascript => {
#         :type => "interpreted"
#       }
#
#     }
#   }
# }
