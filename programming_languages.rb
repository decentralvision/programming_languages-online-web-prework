require 'pry'

def reformat_languages(languages)
  output = {}
  languages.each do |style, languages_hsh|
    languages_hsh.each do |language, type_hsh|
      output[language] = {}

      if output[language].has_key?(:style)
        output[language][:style].push(style)
      else
        output[language][:style] = [style]
      end
      type_hsh.each do |type_key, type|
        output[language][:type] = type
      end
    end
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
