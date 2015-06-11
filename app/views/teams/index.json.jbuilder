json.array!(@teams) do |team|

	#team.to_json

	#@post = Post.find(params[:id])

    render json: team

end
