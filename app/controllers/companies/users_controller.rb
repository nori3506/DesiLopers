class Companies::UsersController < Companies::ApplicationController

  def index
    if params[:filter].present?
      case params[:filter]
      when "interested_by_user"
        @users = current_user.company.projects.includes([interests: :user], :interest_users).interested_by_user.map(&:interest_users).flatten
      when "interested_by_company"
        @users = current_user.company.projects.includes([interests: :user], :interest_users).interested_by_company.map(&:interest_users).flatten        
      when "under_screening"
        @users = User.candidates_users(current_user.company, "screening")
      when "under_skill_checking"
        @users = User.candidates_users(current_user.company, "skill_check")
      when "under_interview"
        @users = User.candidates_users(current_user.company, "interview")
      when "under_offerring"
        @users = User.candidates_users(current_user.company, "recruitment_offer")
      when "under_signed"
        @users = User.candidates_users(current_user.company, "signed")
      when "rejected"
        @users = User.candidates_users(current_user.company, "rejected")
      end
    else
      @users = User.normal_users.order(updated_at: :desc)
    end
    @all_number = User.normal_users.order(updated_at: :desc).size
    @interested_by_user_number = current_user.company.projects.includes([interests: :user], :interest_users).interested_by_user.map(&:interest_users).flatten.size
    @interested_by_company_number = current_user.company.projects.includes([interests: :user], :interest_users).interested_by_company.map(&:interest_users).flatten.size
    @screening_number = User.candidates_users(current_user.company, "screening").size
    @skill_checking_number = User.candidates_users(current_user.company, "skill_check").size
    @interview_number = User.candidates_users(current_user.company, "interview").size
    @recruitment_offerring_number = User.candidates_users(current_user.company, "recruitment_offer").size
    @signed_number = User.candidates_users(current_user.company, "signed").size
    @rejected_number = User.candidates_users(current_user.company, "rejected").size
  end

  def show
    @projects= current_user.company.projects
    @user = User.find(params[:id]).decorate
    @is_applied = @user.applied_projects.where('user_projects.project_id' => @projects.map{|project| project.id}, 'user_projects.user_id' => @user.id).present?
    @user_projects = @user.user_projects.where('user_projects.project_id' => @projects.map{|project| project.id}, 'user_projects.user_id' => @user.id)
    user_channel = Channel.includes(:channel_users).where('channel_users.user_id' => @user.id)
    company_channel = Channel.includes(:channel_users).where('channel_users.company_id' => current_user.company.id)
    @is_channel = (user_channel & company_channel).present?
    @channel = (user_channel & company_channel)&.first
  end
end
