class MatchesController < ApplicationController
  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)

    if @match.valid?
      @match.save_to_google_doc
      redirect_to new_match_path, notice: 'Your matches have been saved.'
    else
      render 'new'
    end
  end

  private

  def match_params
    params.require(:match).permit(:match_1, :match_2, :match_3)
                          .merge(user_id: current_user.id)
  end
end
