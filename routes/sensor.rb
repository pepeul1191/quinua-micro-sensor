class MyApp < Sinatra::Base
    get '/sensor/grabar' do
        data = JSON.parse(params['data'])
        puts data
    end
end
