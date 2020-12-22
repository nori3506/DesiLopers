class Companies::UsersController < Companies::ApplicationController

  def index
    if params[:filter].present?
      case params[:filter]
      when "interested_by_user"
        return @users = current_user.company.projects.includes([interests: :user], :interest_users).map(&:interest_users).flatten
      # when "interested_by_company"
      #   @users = 
      when "under_screening"
        return @users = User.candidates_users(current_user.company, "screening")
      when "under_skill_checking"
        return @users = User.candidates_users(current_user.company, "skill_check")
      when "under_interview"
        return @users = User.candidates_users(current_user.company, "interview")
      when "under_offerring"
        return @users = User.candidates_users(current_user.company, "recruitment_offer")
      when "under_signed"
        return @users = User.candidates_users(current_user.company, "signed")
      when "rejected"
        return @users = User.candidates_users(current_user.company, "rejected")
      end
    end
    @users = User.normal_users.order(updated_at: :desc)
  end

  def show
    @projects= current_user.company.projects
    @user = User.find(params[:id]).decorate
    user_channel = Channel.includes(:channel_users).where('channel_users.user_id' => @user.id)
    company_channel = Channel.includes(:channel_users).where('channel_users.company_id' => current_user.company.id)
    @is_channel = (user_channel & company_channel).present?
    @channel = (user_channel & company_channel)&.first
  end
end
