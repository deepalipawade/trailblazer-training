module User::Operation
    class IndexOld < Trailblazer::Operation
        step :valid_user?
        fail :log_error, fail_fast: true 
        step :valid_user_role?
        fail :log_invalid_role_error
        step :load_data

        def valid_user?(ctx, **)
            # false/nil  - true - failure track
            # true / any ruby obj - success track
            # true
            true
        end

        def valid_user_role?(ctx, **)
            true
        end

        def log_invalid_role_error(ctx, **)
            ctx[:invalid_role] = 'Invalid role'
        end

        def log_error(ctx, **)
            ctx[:errors] = 'Unauth'
        end

        def load_data(ctx, **)
            ctx[:users] = User.all
        end
    end
  end
  
#step return t/f depending on operation
#pass - successtrack
#fail - failtrack
  
# if valid_user then only call load_data ...execution depends on result of each step
# rails c- resuls[:errors] , 
# ctx -global hash available throughout the operation

# next session : call index from controller  