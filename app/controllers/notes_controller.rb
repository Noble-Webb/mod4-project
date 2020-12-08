class NotesController < ApplicationController
    
    def index
        notes = Note.all 
        render json: notes
    end
    
    def show
       note = Note.find(params[:id])
       render json: note 
    end
    
    def create
        note = Note.new(note_params)

        if note.save
            render json: note
        else
            render json: note.errors.full_messages, status: 403
        end
    end
    
    def update
        note = Note.find(params[:id])
        
        #assigns new attributes to note  
        note.assign_attributes(note_params)
        
        #checks for validation errors
        if note.valid?      
            #saves the assigned updates to the database
            note.save
            render json: note
        else
            render json: note.errors.full_messages
        end  
    end
    
    def destroy
        note = Note.find(params[:id])
        note.destroy 

        render json: {error: "Alright, you can breathe easy now. The note was deleted."}
    end

    def note_params
        params.require(:note).permit(:author, :title, :content, :image_url, :votes, :user_id)
    end
end
