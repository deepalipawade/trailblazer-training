# require "reform/form/active_model/validations"
# require "reform/form/active_model/"
# Rails.application.config.reform.validations = :dry

module User::Contract
    class Form < Reform::Form
        include Reform::Form::ActiveModel
        property :name
        property :email
        property :password
        property :password_confirmation    
        
        validates :email, presence: true 
    end
end