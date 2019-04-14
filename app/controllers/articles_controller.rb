class ArticlesController < ApplicationController
	def create
	  @person = Person.find(params[:person_id])
	  @article = @person.articles.create(article_params)
	  redirect_to person_path(@person)
	end

	private
		def article_params
			params.require(:article).permit(:name, :publication_date)
		end
end

