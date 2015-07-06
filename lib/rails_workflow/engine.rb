module RailsWorkflow
  class Engine < ::Rails::Engine
    isolate_namespace RailsWorkflow

    config.generators do |g|
      g.template_engine :slim
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end

    initializer "rails_workflow.assets.precompile" do |app|
      app.config.assets.precompile += %w(application.css application.js)
    end
  end
end
