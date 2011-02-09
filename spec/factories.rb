Factory.define :page, :class => Pagificate::Page do |p|
  p.title            'Test Page'
  p.body             'This is just a test page.'
  p.use_site_layout  true
  p.published        false
end
