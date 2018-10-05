Redmine::Plugin.register :portfolio_timeline do
  name 'Portfolio Timeline plugin'
  author 'SamuelFL'
  description 'Redmine plugin for portfolio management'
  version '0.1.4'
  project_module :portfolios do
    permission :view_portfolios, :portfolios => :index
  end
  menu :project_menu, :portfolios, { :controller => 'portfolios', :action => 'index' }, :caption => 'Portfolio', :after => :overview
end
