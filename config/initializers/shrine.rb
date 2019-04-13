require 'shrine'
require 'shrine/storage/webdav'
require 'shrine/storage/file_system'
require 'shrine/plugins/activerecord'

Shrine.plugin :upload_endpoint
Shrine.plugin :activerecord

def production_storage
  credentials = { user: ENV.fetch('WEBDAV_USERNAME'), pass: ENV.fetch('WEBDAV_PASSWORD') }
  {
    cache: Shrine::Storage::WebDAV.new(host: 'https://storage.fuckrf.cf/remote.php/webdav/music', prefix: 'cache', credentials: credentials),
    store: Shrine::Storage::WebDAV.new(host: 'https://storage.fuckrf.cf/remote.php/webdav', prefix: 'music', credentials: credentials)
  }
end

def development_storage
  {
    cache: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/cache'),
    store: Shrine::Storage::FileSystem.new('public', prefix: 'uploads')
  }
end

Shrine.storages = Rails.env.production? ? production_storage : development_storage
