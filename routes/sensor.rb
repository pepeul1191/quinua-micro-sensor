require 'rbejdb'

class MyApp < Sinatra::Base
    post '/sensor/grabar' do
        data = JSON.parse(params['data'])
        db = EJDB.open("db/quinua", EJDB::DEFAULT_OPEN_MODE)
        db.save("sensores", data)
        db.close
    end

    get '/sensor/listar' do
      db = EJDB.open("db/quinua", EJDB::DEFAULT_OPEN_MODE)
      rs = db.find('sensores')
      i = 0
      rs.each do |medicion|
        puts i.to_s + ' - ' + medicion
        i = i + 1
      end
      db.close #Close the database
    end
end
