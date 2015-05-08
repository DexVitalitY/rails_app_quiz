class TweetsController < ApplicationController
	
	def index
		@tweets = Tweet.all
	end

	def create
		@tweet = Tweet.new(post_params)

		if @tweet.save
			render :json => { message: "tweet saved" }
		else
			render :json => { message: "tweet not saved" }
		end
	end

	def show
		@tweet = Tweet.find_by_id(params[:id])

		if @tweet.nil?
			render :json => {
				message: "Cannot Find Tweet with id=#{params[:id]}"
			}
		end
	end

private

	def post_params
		params.require(:tweet).permit(:content, :author_name)
	end

end