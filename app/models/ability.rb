class Ability
  include CanCan::Ability

   def initialize(user)
#    if user then
#	    user.roles.each do |role|
#	      role.permissions.each do |permission|
#	        can permission.conduct.to_sym, permission.regulator.constantize
#	      end
#	 end
#	end

   end
end