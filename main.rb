require 'sinatra'
require 'sqlite3'
require 'pp'

db = SQLite3::Database.new "db/post.db"
db.results_as_hash = true

get '/' do
  posts = db.execute("SELECT * FROM posts ORDER BY id DESC")
  erb :index, { :locals => { :posts => posts } }
end

post '/' do
  stmt = db.prepare("INSERT INTO posts (text) VALUES (?)")
  stmt.bind_params(params["ex_text"])
  stmt.execute
  redirect '/'
end

get '/hello' do
  "Hello world"
end

get '/example' do
  erb :example
end
