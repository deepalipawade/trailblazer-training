module User::Cell
    class Index < Trailblazer::Cell
        include ActionView::Helpers::FormOptionsHelper
        include SimpleForm::ActionViewExtensions::FormHelper  
    end
end