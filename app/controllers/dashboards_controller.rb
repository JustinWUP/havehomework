class DashboardsController < InheritedResources::Base

	def index
		@user = User.find(current_user.id)
		@subjects = Subject.all()
		@mysubjects = @user.subjects.all()
		@assignments = @user.assignments.all
		@classperiods = @user.classperiods.all
		respond_to do |format|
	      format.html # index.html.erb
	    end
	end

	def update_subjects
		@user = User.find(current_user.id)
		@subjects = params[:user]['subject_ids'][0]
		@subjects = @subjects.split(',')
		@subjects = @subjects.collect{|i| i.to_i}
		@subjects = Subject.find(@subjects)
		@user.subjects = @subjects
		respond_to do |format|
	    	format.html { redirect_to '/dashboard', notice: 'Subjects were successfully updated.' }
	    end
	end

	def add_classperiod
		@user = User.find(current_user.id)
		@classperiod = Classperiod.new(params[:classperiod])
		@user.classperiods << @classperiod
		respond_to do |format|
	    	format.html { redirect_to '/dashboard', notice: 'Class Periods were successfully updated.' }
	    end
	end

end
