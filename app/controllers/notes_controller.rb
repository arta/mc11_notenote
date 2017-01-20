class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  def index

  end

  # GET /notes/new                     (renders /notes/_form)
  def new

  end

  # POST /notes
  #   html:   <form action='/notes', method='post' ..>
  #   rails:  =form_for @note.. when @note.new_record? == true
  #   router: post '/notes', to: 'notes#create' ...
  def create

  end

  # GET /notes/:id
  def show

  end

  # GET /notes/:id/edit                (renders /notes/_form)
  def edit

  end

  # PATCH/PUT /notes/:id
  def update

  end

  # DELETE /notes/:id
  def destroy

  end

  private
    def notes_params

    end

    def set_note
      @note = Note.find params[:id]
    end
end
