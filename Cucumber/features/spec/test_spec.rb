require_relative '../pages/login_page_new'

describe "login tests" do
  context "on login page" do
    before :all do
      visit LoginPageNew
    end


    it 'can successfully login' do
      expect(on(HomePage).logged_in?).to eql true
    end
  end

  describe "Negative cases" do
    context "on Login page" do
      before :all do
        on(HomePage).log_out if on (HomePage).logged_in?
      end

      context "when username field empty" do
        before :each do
          on(LoginPageNew).password = password
          on(LoginPageNew).submit
        end
        it "shows 'Username should not be empty' warning", :tag_name do
          expect(on(LoginPageNew).error_message).to include error_message
        end

      end

    end
  end

end