	  #test api with gem	
    require 'sendgrid-ruby'	
    require 'sendgrid-actionmailer'	
    include SendGrid	
    class LeadsController < InheritedResources::Base	
      # skip_before_action :verify_authenticity_token	
        
      #before_action :set_lead, only: [:show, :edit, :update, :destroy]	
      def new	
        @lead = Lead.new	
        respond_to do |format|	
            format.html #index.html.erb	
            format.json {render json: @lead}	
        end	
      end	
      def index	
        @leads = Lead.all	
      end	
      def show	
        @lead = Lead.find(params(:lead))	
        send_data(@lead.file_contents,	
                  type: @lead.content_type,	
                  filename: @lead.filename)	
      end	
      def create	
        p params	
        p lead_params	
        @lead = Lead.new(lead_params)	
        sendgrid_email = (@lead.email).to_s	
          
        respond_to do |format|	
          if @lead.save	
            format.html { redirect_to root_path, notice: "Save process completed!" }	
            format.json { render json: @lead, status: :created, location: @lead }	
              
            #--------------Sendgrid ---------------------	
            SendgridMailer.send(@lead.email.to_s, {"contact_full_name": @lead.contact_full_name, "project_name": @lead.project_name}, 'd-e271b9b80fdb44ebbd1d722a38ad2b3e')	
            #--------------Sendgrid ---------------------	
          else	
            format.html { 	
                flash.now[:notice]="Save proccess coudn't be completed!" 	
                render :new 	
            }	
            format.json { render json: @lead.errors, status: :unprocessable_entity}	
          end	
        end	
      end	
      private	
        def lead_params	
          params.require(:leads).permit(:contact_full_name, :company_name, :email, :phone, :project_name, :project_description, :department, :message, :attached_file, :created_at)	
        end	
    end


