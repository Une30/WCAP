class Ability
  include CanCan::Ability

  def initialize(user)
    unless user 
      can :read, [User]
    else
      #============================Admins & manager=============================
      if user.admin or user.manager?
        can :manage, [Abusing, Balloon, Bart, Clinic, Ddtanswer, Ddtquestion, Drug, Examiner, Gonogo, Patient, Profile, Rectangle, Supervisor, User, Reg, Task]
      end

      #===============================Supervisor================================

      if user.supervisor

        can :manage, Clinic do |clinic|
            clinic == user.supervisor.clinic
        end
        can :manage, User

        can :manage, [Balloon, Bart, Ddtanswer, Gonogo, Rectangle]

        can :update, Profile do |profile|
            profile.user == user
        end

        can :manage, [Task,Reg]
            
        
            
        can :manage , Patient do |patient|
            Clinic.has_patient(patient, user.supervisor.clinic.id,user)
        end

        can :manage , Examiner
            
        can :manage , Abusing do |abusing|
            Clinic.has_patient(abusing.patient, user.supervisor.clinic.id,user)
        end
      end

      #=================================Examiner================================
      if user.examiners.size>0

        can :manage, User
            

        can [:create, :read, :update], [Balloon, Bart, Ddtanswer, Gonogo, Rectangle]

        can :update, Profile do |profile|
            profile.user == user
        end

        can :manage, Task

        can :create, Reg
            
        can :manage, Patient do |patient‍|
            User.has_patient2(patient‍,user)
        end

        can :manage, Abusing do |abusing‍|
            User.has_patient2(abusing.patient‍,user)
        end

        can :read, Clinic do |clinic|
            User.has_clinic(clinic, user)
        end    

      end
      #===============================OTHER========================================
      if user.examiners.size<=0 and !user.supervisor and !user.admin and !user.manager
        can :update, Profile do |profile|
            profile.user == user
        end        

      end
    end 

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
