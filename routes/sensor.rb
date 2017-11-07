# encoding: UTF-8
# coding: UTF-8
# -*- coding: UTF-8 -*-

require 'rbejdb'

class MyApp < Sinatra::Base
    post '/sensor/grabar' do
        data = JSON.parse(params['data'])
        db = EJDB.open("db/quinua", EJDB::DEFAULT_OPEN_MODE)
        db.save("sensores", data)
        db.close
        'ok'
    end

    get '/sensor/listar' do
      db = EJDB.open("db/quinua", EJDB::DEFAULT_OPEN_MODE)
      rs = db.find('sensores')
      i = 0
      data = ''
      rs.each do |medicion|
        #puts medicion.to_json
        i = i + 1
      end
      db.close #Close the database
      i.to_s
    end
end
