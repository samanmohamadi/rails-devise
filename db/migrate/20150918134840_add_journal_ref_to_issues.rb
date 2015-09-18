class AddJournalRefToIssues < ActiveRecord::Migration
  def change
    add_reference :issues, :journal, index: true, foreign_key: true
  end
end
