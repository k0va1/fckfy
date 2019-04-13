# require 'shrine'
# require 'shrine/plugins/activerecord'
# require 'shrine/plugins/backgrounding'
# require 'shrine/plugins/data_uri'
# require 'shrine/plugins/delete_raw'
# require 'shrine/storage/file_system'
# require 'shrine/plugins/determine_mime_type'
# require 'shrine/plugins/cached_attachment_data'
# require 'shrine/plugins/restore_cached_data'
# require 'shrine/plugins/validation_helpers'
# require 'shrine/plugins/pretty_location'
# require 'shrine/plugins/processing'
# require 'shrine/plugins/versions'
# require 'shrine/storage/webdav'

# Shrine.plugin :activerecord
# Shrine.plugin :backgrounding
# Shrine.plugin :cached_attachment_data
# Shrine.plugin :data_uri
# Shrine.plugin :determine_mime_type
# Shrine.plugin :restore_cached_data
# Shrine.plugin :store_dimensions
# Shrine.plugin :validation_helpers
# Shrine.plugin :versions

# def production_storage
#   {
#     cache: Shrine::Storage::WebDAV.new(host: 'http://webdav-server.com', prefix: 'your_project/cache'),
#     store: Shrine::Storage::WebDAV.new(host: 'http://webdav-server.com', prefix: 'your_project/store')
#   }
# end
#
# def development_storage
#   {
#     cache: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/cache'),
#     store: Shrine::Storage::FileSystem.new('public', prefix: 'uploads')
#   }
# end
#
# Shrine.storages = Rails.env.production? ? production_storage : development_storage
