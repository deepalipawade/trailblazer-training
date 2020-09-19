class User::Output < Trailblazer::Operation
    step :is_admin?, Output(:failure) => Track(:member) 
    # track changed to member if true
    #, Output(:success) => Track(:success)
    step :task_two, Output(:success) => Track(:success)
    step :success_response
    fail :failure_response, magnetic_to: 

    def task_one(ctx, **)
        tue
    end

    def task_two(ctx, **)
        false
    end

    def success_response(ctx, **)
        ctx[:response] = {
            message: "success"
        }
    end

    def failure_response(ctx, **)
        ctx[:response] = {
            message: "failure"
        }
    end
    
end