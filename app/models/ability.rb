# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
      can :access, :rails_admin
      can :read, :dashboard  
    else
      can :update, Question do |question|
        question.user == user
      end
      can :destroy, Question do |question|
        question.user == user
      end

      can :update, Answer do |answer|
        answer.user == user
      end
      can :destroy, Answer do |answer|
        answer.user ==   user
      end

      can :create, Question
      can :create, Answer
    end
  end
end
