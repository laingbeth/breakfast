require 'rails_helper'

describe CerealsController, type: :controller  do
  describe '#index' do 
    it 'renders index' do
      get :index
      expect(response).to render_page
    end
  end  
end