#encoding: utf-8

Before do
  delete_database backend_url('audiobooks')
end

After do |scenario|
  if scenario.failed?
    save_page
  end
  delete_database backend_url('audiobooks')
end
