module ::Kernel
  def rails6?
    return defined?(Rails) && Rails::VERSION::MAJOR == 6
  end

  def in_rails_3(&block)
    yield if block_given? unless rails6?
  end
end

require 'survey/engine'
require 'survey/version'
require 'survey/active_record'

ActiveRecord::Base.send(:include, Survey::ActiveRecord)