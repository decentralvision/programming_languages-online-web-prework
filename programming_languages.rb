def reformat_languages(languages)
  output = {}
  languages.each do |style, languages_hsh|
    languages_hsh.each do |language, type_hsh|
    output[language] = {:style => style}
      type_hsh.each do |key, value|
        output[language][key] = value
      end
    end
  end
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
