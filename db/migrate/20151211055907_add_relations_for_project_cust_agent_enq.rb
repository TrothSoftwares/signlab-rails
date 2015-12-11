class AddRelationsForProjectCustAgentEnq < ActiveRecord::Migration
  def change
    add_reference :projects, :customer, index: true, foreign_key: true
    add_reference :projects, :agent, index: true, foreign_key: true
    add_reference :enquiries, :project, index: true, foreign_key: true

  end
end
