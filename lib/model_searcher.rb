require "active_record"
require "model_searcher/version"

module ModelSearcher
  class << self
    def find(table_name)
      models[table_name.to_sym]
    end

    def file_path(file_path=nil)
      @file_path ||= if defined? Rails
                       "#{Rails.root}/app/models"
                     else
                       file_path
                     end
    end

    private
    def models
      @models ||= require_models
    end

    def require_models
      Dir.glob(File.expand_path("#{file_path}/*.rb")).each do |model_file|
        require model_file
      end

      constants = Object.constants.map do |name|
        Object.const_get(name)
      end

      constants.each_with_object({}) do |constans, models|
        if constans.class == Class && constans < ActiveRecord::Base && constans.abstract_class?.!
          models[constans.table_name.to_sym] = constans
        end
      end
    end
  end
end
