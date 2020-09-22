
module User::Operation
    class CreateOld < Trailblazer::Operation
        step -> (ctx, **) { ctx[:params][:email].present? }
        fail :log_error, fail_fast: true
        step :password_present?
        fail :password_present_error, fail_fast:true
        step :password_matching?
        fail :password_matching_error, fail_fast:true
        step :create_user
        step :address_present?, Output(:failure) => Id(:send_mail)
        step :create_address
        step :send_mail
        step :sucess_response
        fail :fail_message
        pass :check_count
    
        def log_error(ctx, **)
          ctx[:errors] = 'Email must be present'
        end
    
        def password_present?(ctx, **)
          ctx[:params][:password] && ctx[:params][:password_confirmation]
        end
    
        def password_present_error(ctx, **)
          ctx[:errors] = 'Password and Password confirmation must be present'
        end
    
        def password_matching?(ctx, **)
          ctx[:params][:password]==ctx[:params][:password_confirmation]
        end
    
        def password_matching_error(ctx, **)
          ctx[:invalid_role] = 'Password and Password cofirmation must be same'
        end

        def create_user(ctx, **)
            User.create(ctx[:params])
          end
      
        def sucess_response(ctx, params:, **)
        ctx[:success] = "Success"
        end
    
        def fail_message
        params[:error_message] = "Failed"
        end
    
        def check_count(ctx, **)
        if User.count > 100
            p "100 users"
        end
        end
    
        def address_present?(ctx, params:, **)
            ctx[:address].present?
        end
    
        def create_address(ctx, params:, **)
        params[:address_success] = "Address created Successfully"
        end
    
        def send_mail(ctx, params:, **)
        params[:mail_response] = "Mail sent"
        end
    end
end
