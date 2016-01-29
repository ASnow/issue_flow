class WellcomeController < ApplicationController
  def index
    $redis.publish 'user.asnow', ['say'].to_json
    render text: 'hello'
  end
end
