class NotesController < ApplicationController
  # before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  def index

  end

  # GET /notes/new                     (renders /notes/_form)
  def new

  end

  # POST /notes
  #   html:   <form action='/notes', method='post' ..>
  #   rails:  =form_for @notes .. when @notes.new_record? == true
  #   router: post '/notes', to: 'notes#create'
  def create

  end

  # GET /notes/:id
  def show

  end

  # GET /notes/:id/edit                (renders /notes/_form)
  def edit

  end

  # PATCH/PUT /notes/:id
  #   html:   <form action='/notes/1', method='patch' ..>
  #   rails:  =form_for @notes .. when @notes.persisted? == true
  #   router: match '/posts/1', to: 'notes#update', via: [:patch, :put]
  #   Router reads :id value from the request and assigns it
  #   to params hash namesake key (params[:id]) for notes_controller's use
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
