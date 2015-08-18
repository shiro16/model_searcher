require 'model_searcher'
require 'thor'

module ModelSearcher
  class CLI < Thor
    desc 'find table_name file_path', 'find model class from table_name'
    def find(table_name, file_path='app/models')
      ModelSearcher.file_path(file_path)
      say(ModelSearcher.find(table_name))
    end
  end
end
