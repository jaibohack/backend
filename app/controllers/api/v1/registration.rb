module API
  module V1
    class Registration < Grape::API
      include API::V1::Defaults

      resource :registration do
        desc "Attendees registration"
        format :json
        params do
          requires :user, :type => Hash do
            requires :main, :type => Hash do
              requires :full_name, type: String, desc: 'Attendee email'
              requires :email, type: String, desc: 'A valid email'
              optional :github, type: String, desc: 'Github username'
              optional :linkedin, type: String, desc: 'Linkedin username'
              requires :age, type: Integer, desc: 'Attendee age'
            end

            requires :school, :type => Hash do
              requires :name, type: String, desc: "Where the attendee studies"
            end

            requires :skills, type: Array do
              requires :name
            end
            
            requires :skills, type: Array, desc: "List of skills that the attendee has"
          end

          requires :event, :type => Hash do
            requires :name, type: String, desc: "Event name!"
          end
        end

        post '' do
          
          declared_params = declared(params, include_missing: false)
          user = declared_params.user
          main = user.main

          attendee = Attendee.where(email: main.email).first_or_create do |a|
            main.each do|m|
              a[m[0]]= m[1]
            end
            a.school = School.find_or_create_by(name: user.school.name.downcase)
          end

          event = Event.find_by!(declared_params.event.to_hash)

          if Ticket.where(attendee: attendee, event_id: event).first
            error! "Already registered", 403
          else
            user.skills.each do |skill|
              new_skill = Skill.find_or_create_by(name: skill.name.downcase)
              AttendeeSkill.create(skill: new_skill, attendee: attendee) unless attendee.skills.where(name: new_skill.name)
            end
            Ticket.create(attendee: attendee, event: event)
          end
        end
      end
    end
  end
end
