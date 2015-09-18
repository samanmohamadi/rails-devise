class JournalsController < ApplicationController
  def index
    # @j = Journal.create(title: 'journal 2',issn: 'issn 2')
    # @j.save()/

    @journals = Journal.all();
  end

  def create
    
  end

  private

  def journal_params
    params.require(:journal).permit(:title,:issn)
  end

end
