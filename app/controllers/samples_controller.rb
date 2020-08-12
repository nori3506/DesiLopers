class SamplesController < ApplicationController
  before_action :getsample, only: [:update, :destroy]

  def index
  end

  def all
    samples = Sample.all
    result = []
    samples.each do |sample|
      hash = sample_to_hash(sample)
      result << hash
    end
    render :json => result
  end

  def create
    name = params[:name]
    sample = Sample.new({
      name: name,
    })
    sample.save!

    result = sample_to_hash(sample)
    render :json => result
  end

  def update
    @sample.update!({
      name: params[:name],
    })
    result = sample_to_hash(@sample)
    render :json => result
  end

  def destroy
    @sample.destroy!

    result = {
      id: params[:id],
    }
    render :json => result
  end

  private

  def getsample
    @sample = Sample.find(params[:id])
  end

  def sample_to_hash(sample)
    hash = {}
    hash[:id] = sample.id
    hash[:name] = sample.name
    return hash
  end
end
