module ControllerHelper
  def skip_authentication
    allow(controller).to receive(:authorize).and_return(true)
  end
  def json
    JSON.parse(response.body)
  end
end
