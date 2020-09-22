module User::Operation
    class Index < Trailblazer::Operation
        step :load_users

        def load_users(ctx, **)
            ctx[:model] = User.all
        end
    end
end