class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  def index
    @notes = Note.order created_at: :desc
  end

  # GET /notes/new                     (renders /notes/_form)
  def new
    @note = current_user.notes.new
  end

  # POST /notes
  #   html:   <form action='/notes', method='post' ..>
  #   rails:  =form_for @notes .. when @notes.new_record? == true
  #   router: post '/notes', to: 'notes#create'
  def create
    @note = current_user.notes.new notes_params

    if @note.save notes_params
      redirect_to @note, notice:'Note created.'
    else
      render 'new'
    end
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
    if @note.update notes_params
      redirect_to @note, notice:'Note updated.'
    else
      render 'edit'
    end
  end

  # DELETE /notes/:id
  def destroy
    @note.destroy
    redirect_to notes_path, notice:'Note destroyed.'
  end

  private
    def notes_params
      params.require( :note ).permit( :title, :content )
    end

    def set_note
      @note = Note.find params[:id]
    end
end
