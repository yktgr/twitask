module TwiappsHelper
    def new_or_edit
    if action_name == 'new' || action_name == 'confirm'
        confirm_twiapps_path
    elsif action_name == 'edit' || action_name == 'update'
        twiapp_path
    end
    end
end
