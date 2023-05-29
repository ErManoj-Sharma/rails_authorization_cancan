RailsAdmin.config do |config|
  config.asset_source = :webpacker

  config.main_app_name = "Demo Test Application "

  ### Popular gems integration

  config.parent_controller = "::ApplicationController"
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  config.authorize_with :cancancan


  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration



  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
