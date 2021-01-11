class ReadersController < ApplicationController
  def new
    @reader = Reader.new
  end

  def show
    @reader = Reader.find(params[:id])
  end

  def create
    @reader = Reader.new(reader_params)

    if @reader.save
      ReaderMailer.with(reader: @reader).greeting_mail.deliver_now
      redirect_to @reader, notice: 'Reader was successfully created.'
    else
      render :new
    end
  end

  private

  def reader_params
    params.require(:reader).permit(:name, :email)
  end
end
